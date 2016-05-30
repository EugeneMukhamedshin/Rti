using System;
using System.Globalization;
using Jace;
using Jace.Execution;
using Jace.Tokenizer;
using log4net;

namespace Rti.ViewModel.Calculation
{
    public class Calculator
    {
        private readonly ILog _log = LogManager.GetLogger(typeof(Calculator));

        public decimal? Calculate(string expression)
        {
            try
            {
                if (expression == null)
                    return null;
                var cultureInfo = new CultureInfo("ru-RU");
                if (expression.Contains(",")) 
                    cultureInfo.NumberFormat.NumberDecimalSeparator = ",";
                else 
                    cultureInfo.NumberFormat.NumberDecimalSeparator = ".";
                var reader = new TokenReader(cultureInfo);
                var tokens = reader.Read(expression);
                var functionRegistry = new FunctionRegistry(false);
                var astBuilder = new AstBuilder(functionRegistry);
                var operation = astBuilder.Build(tokens);
                var executor = new Interpreter();
                return (decimal)executor.Execute(operation, null, null);
            }
            catch (Exception ex)
            {
                _log.Error(String.Format("Ошибка при расчете значения выражения [{0}]", expression), ex);
                return null;
            }
        }
    }
}
