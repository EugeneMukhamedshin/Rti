
using System;
using Rti.Model.Domain.Generator;

namespace Rti.Model.Domain
{
	// The class for additional_infos
	[Table("additional_infos")]
	public partial class AdditionalInfo: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for constants
	[Table("constants")]
	public partial class Constant: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("k_tr")]
		public virtual Double KTr { get; set; }
		[Field("k_esn")]
		public virtual Double KEsn { get; set; }
		[Field("k_ob_ceh")]
		public virtual Double KObCeh { get; set; }
		[Field("k_ob_pr")]
		public virtual Double KObPr { get; set; }
		[Field("k_el")]
		public virtual Double KEl { get; set; }
		[Field("k_nep")]
		public virtual Double KNep { get; set; }
		[Field("k_ren")]
		public virtual Double KRen { get; set; }
		[Field("nds")]
		public virtual Double Nds { get; set; }
		[Field("k_st")]
		public virtual Double KSt { get; set; }
		[Field("date_from")]
		public virtual DateTime DateFrom { get; set; }
		[Field("date_to")]
		public virtual DateTime DateTo { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for contragents
	[Table("contragents")]
	public partial class Contragent: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("type")]
		public virtual Int32 Type { get; set; }
		[Field("address")]
		public virtual String Address { get; set; }
		[Field("director")]
		public virtual String Director { get; set; }
		[Field("trustee")]
		public virtual String Trustee { get; set; }
		[Field("phone")]
		public virtual String Phone { get; set; }
		[Field("grounding")]
		public virtual String Grounding { get; set; }
		[Field("inn")]
		public virtual String Inn { get; set; }
		[Field("kpp")]
		public virtual String Kpp { get; set; }
		[Field("account")]
		public virtual String Account { get; set; }
		[Field("corr_account")]
		public virtual String CorrAccount { get; set; }
		[Field("okved")]
		public virtual String Okved { get; set; }
		[Field("okato")]
		public virtual String Okato { get; set; }
		[Field("okpo")]
		public virtual String Okpo { get; set; }
		[Field("ogrn")]
		public virtual String Ogrn { get; set; }
		[Field("bik")]
		public virtual String Bik { get; set; }
		[Field("bank")]
		public virtual String Bank { get; set; }
		[Field("email")]
		public virtual String Email { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for details
	[Table("details")]
	public partial class Detail: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for drivers
	[Table("drivers")]
	public partial class Driver: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("car_model")]
		public virtual String CarModel { get; set; }
		[Field("number")]
		public virtual String Number { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("document")]
		public virtual String Document { get; set; }
		[Field("is_deleted")]
		public virtual String IsDeleted { get; set; }
	}

	// The class for employees
	[Table("employees")]
	public partial class Employee: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("code")]
		public virtual String Code { get; set; }
		[Field("full_name")]
		public virtual String FullName { get; set; }
		[Field("job_id")]
		public virtual Int32 JobId { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for equipments
	[Table("equipments")]
	public partial class Equipment: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("drawing")]
		public virtual String Drawing { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("existance")]
		public virtual Int32 Existance { get; set; }
		[Field("form_count")]
		public virtual Int32? FormCount { get; set; }
		[Field("slot_count")]
		public virtual Int32? SlotCount { get; set; }
		[Field("output")]
		public virtual Int32? Output { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for groups
	[Table("groups")]
	public partial class Group: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for jobs
	[Table("jobs")]
	public partial class Job: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("login")]
		public virtual String Login { get; set; }
		[Field("password")]
		public virtual String Password { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for machines
	[Table("machines")]
	public partial class Machine: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("plate_size")]
		public virtual String PlateSize { get; set; }
		[Field("inv_number")]
		public virtual String InvNumber { get; set; }
		[Field("plate_count")]
		public virtual Int32? PlateCount { get; set; }
		[Field("plate_power")]
		public virtual Double? PlatePower { get; set; }
		[Field("engine_power")]
		public virtual Double? EnginePower { get; set; }
		[Field("total_power")]
		public virtual Double? TotalPower { get; set; }
		[Field("power_price")]
		public virtual Double? PowerPrice { get; set; }
		[Field("time_price")]
		public virtual Double? TimePrice { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for materials
	[Table("materials")]
	public partial class Material: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("tech_conditions")]
		public virtual String TechConditions { get; set; }
		[Field("density")]
		public virtual Double? Density { get; set; }
		[Field("thickness")]
		public virtual Double? Thickness { get; set; }
		[Field("length")]
		public virtual Double? Length { get; set; }
		[Field("width")]
		public virtual Double? Width { get; set; }
		[Field("price")]
		public virtual Double? Price { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for measure_units
	[Table("measure_units")]
	public partial class MeasureUnit: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("code")]
		public virtual String Code { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for methods
	[Table("methods")]
	public partial class Method: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("order")]
		public virtual Double Order { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

}
