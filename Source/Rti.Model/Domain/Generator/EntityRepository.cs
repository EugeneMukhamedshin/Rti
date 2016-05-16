using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using MySql.Data.MySqlClient;

namespace Rti.Model.Domain.Generator
{
    public class EntityRepository
    {
        public String ConnectionString { get; set; }
        public String SchemaName { get; set; }

        public List<Entity> GetEntities(String domainFileName)
        {
            var result = new List<Entity>();

            var xml = File.ReadAllText(domainFileName);
            var xDoc = XDocument.Parse(xml);
            var entityDeclarations = xDoc.Element("Domain").Elements("Entity").Select(e => new EntityDeclaration
            {
                TableNameMask = e.Attribute("TableNameMask").Value,
                ReplaceWhat = e.Attribute("ReplaceWhat") == null ? null : e.Attribute("ReplaceWhat").Value,
                ReplaceWith = e.Attribute("ReplaceWith") == null ? null : e.Attribute("ReplaceWith").Value
            });
            using (var connection = new MySqlConnection(ConnectionString))
            {
                connection.Open();
                using (var getTableColumnsCommand = connection.CreateCommand())
                {
                    getTableColumnsCommand.CommandText = String.Format(@"
  Select Replace (Ut.Table_Name, T.Replace_What, T.Replace_With) Table_Name, Utc.Column_Name, Data_Type, kcu.Referenced_Table_Name, kcu.Referenced_Column_Name, Utc.Is_Nullable
    From columns Utc
         Inner Join Tables Ut On Ut.Table_Name = Utc.Table_Name and Ut.Table_Schema = Utc.Table_Schema
         Inner Join ({0}) T
            On Utc.Table_Name Like T.Table_Name_Mask
         left join Key_Column_Usage kcu on kcu.TABLE_SCHEMA = Ut.TABLE_SCHEMA and kcu.TABLE_NAME = Ut.TABLE_NAME and kcu.COLUMN_NAME = Utc.COLUMN_NAME and kcu.REFERENCED_TABLE_NAME is not null
Where Ut.Table_Schema = @Table_Schema
Order By utc.Table_Name, utc.ordinal_position",
                        entityDeclarations.Aggregate(String.Empty,
                            (res, ed) =>
                                String.Format("{0}{1}{2}", res, res == String.Empty ? String.Empty : " union all ",
                                    String.Format("select '{0}' Table_Name_Mask, '{1}' Replace_What, '{2}' Replace_With from dual", ed.TableNameMask, ed.ReplaceWhat, ed.ReplaceWith
                                    ))));
                    getTableColumnsCommand.Parameters.AddWithValue("@Table_Schema", SchemaName);
                    using (var reader = getTableColumnsCommand.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var entity = result.FirstOrDefault(e => e.TableName == reader.GetString(0));
                            if (entity == null)
                            {
                                entity = new Entity
                                {
                                    TableName = reader.GetString(0),
                                    Name = GetNotation(reader.GetString(0), false),
                                    Fields = new List<EntityField>(),
                                    References = new List<Reference>()
                                };
                                result.Add(entity);
                            }
                            if (!reader.IsDBNull(3))
                            {
                                entity.References.Add(new Reference
                                {
                                    ReferencedTable = reader.GetString(3),
                                    ReferencedEntityName = GetNotation(reader.GetString(3), false),
                                    ColumnName = reader.GetString(1),
                                    Name = GetNotation(reader.GetString(1), true),
                                    IsNullable = reader.GetString(5) == "YES",
                                    IsManuallyMapped = reader.GetString(1).Contains("manual")
                                });
                            }
                            else
                            {
                                entity.Fields.Add(
                                    new EntityField
                                    {
                                        ColumnName = reader.GetString(1),
                                        Name = GetNotation(reader.GetString(1), false),
                                        ColumnType = reader.GetString(2),
                                        Type = GetType(reader.GetString(2), reader.GetString(1)),
                                        IsNullable = reader.GetString(5) == "YES"
                                    });
                            }
                        }
                    }
                }
            }
            return result;
        }

        private static String GetNotation(String input, bool isReference)
        {
            var parts = (IEnumerable<String>)input.Split('_');
            if (isReference)
            {
                parts = parts.Take(parts.Count() - (input.Contains("manual") ? 2 : 1));
            }
            return
                parts
                .Aggregate(String.Empty,
                    (res, part) =>
                        String.Format("{0}{1}{2}", res, part.Substring(0, 1).ToUpper(), part.Remove(0, 1).ToLower()));
        }

        private static String GetType(String dbType, String columnName)
        {
            switch (dbType)
            {
                case "NUMBER":
                    return typeof(Decimal).Name;
                case "double":
                    return typeof(Double).Name;
                case "int":
                    return columnName.ToLower().StartsWith("is") ? typeof(bool).Name : typeof(Int32).Name;
                case "bigint":
                    return columnName.ToLower().StartsWith("is") ? typeof(bool).Name : typeof(Int64).Name;
                case "tinyint":
                    return columnName.ToLower().StartsWith("is") ? typeof(bool).Name : typeof(Int32).Name;
                case "VARCHAR2":
                    return typeof(String).Name;
                case "varchar":
                    return typeof(String).Name;
                case "NVARCHAR2":
                    return typeof(String).Name;
                case "RAW":
                    return typeof(String).Name;
                case "blob":
                    return "byte[]";
                case "longblob":
                    return "byte[]";
                case "CLOB":
                    return typeof(String).Name;
                case "DATE":
                    return typeof(DateTime).Name;
                case "date":
                    return typeof(DateTime).Name;
                case "datetime":
                    return typeof(DateTime).Name;
            }
            if (dbType.Contains("TIMESTAMP"))
                return typeof(DateTime).Name;
            return dbType;
        }

    }
}
