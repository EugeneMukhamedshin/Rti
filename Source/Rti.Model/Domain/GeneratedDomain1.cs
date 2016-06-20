
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
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for calculations
	[Table("calculations")]
	public partial class Calculation: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("main_material")]
		public virtual decimal? MainMaterial { get; set; }
		[Field("rubber")]
		public virtual decimal? Rubber { get; set; }
		[Field("clue")]
		public virtual decimal? Clue { get; set; }
		[Field("armature")]
		public virtual decimal? Armature { get; set; }
		[Field("sand")]
		public virtual decimal? Sand { get; set; }
		[Field("textile")]
		public virtual decimal? Textile { get; set; }
		[Field("other_material")]
		public virtual decimal? OtherMaterial { get; set; }
		[Field("transport")]
		public virtual decimal? Transport { get; set; }
		[Field("main_salary")]
		public virtual decimal? MainSalary { get; set; }
		[Field("additional_salary")]
		public virtual decimal? AdditionalSalary { get; set; }
		[Field("fixed_tax")]
		public virtual decimal? FixedTax { get; set; }
		[Field("total_division")]
		public virtual decimal? TotalDivision { get; set; }
		[Field("total_manufacture")]
		public virtual decimal? TotalManufacture { get; set; }
		[Field("main_summary")]
		public virtual decimal? MainSummary { get; set; }
		[Field("power_for_formed")]
		public virtual decimal? PowerForFormed { get; set; }
		[Field("other_power")]
		public virtual decimal? OtherPower { get; set; }
		[Field("main_and_power_summary")]
		public virtual decimal? MainAndPowerSummary { get; set; }
		[Field("unforseen")]
		public virtual decimal? Unforseen { get; set; }
		[Field("net_cost")]
		public virtual decimal? NetCost { get; set; }
		[Field("profitability")]
		public virtual decimal? Profitability { get; set; }
		[Field("price")]
		public virtual decimal? Price { get; set; }
		[Field("nds_tax")]
		public virtual decimal? NdsTax { get; set; }
		[Field("summary")]
		public virtual decimal? Summary { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
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

	// The class for contracts
	[Table("contracts")]
	public partial class Contract: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("date")]
		public virtual DateTime Date { get; set; }
		[Field("number")]
		public virtual Int32 Number { get; set; }
	}

	// The class for contragents
	[Table("contragents")]
	public partial class Contragent: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("contragent_type_enum")]
		public virtual ContragentType ContragentTypeEnum { get; set; }
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
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for drawings
	[Table("drawings")]
	public partial class Drawing: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("creation_date")]
		public virtual DateTime? CreationDate { get; set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("additional_info")]
		public virtual String AdditionalInfo { get; set; }
		[Field("code")]
		public virtual String Code { get; set; }
		[Field("shruff_percent")]
		public virtual Double? ShruffPercent { get; set; }
		[Field("mass_with_shruff")]
		public virtual Double? MassWithShruff { get; set; }
		[Field("price")]
		public virtual decimal? Price { get; set; }
		[Field("shaving_price")]
		public virtual decimal? ShavingPrice { get; set; }
		[Field("calculation_price_manual")]
		public virtual decimal? CalculationPriceManual { get; set; }
		[Field("width")]
		public virtual Double? Width { get; set; }
		[Field("length")]
		public virtual Double? Length { get; set; }
		[Field("thickness")]
		public virtual Double? Thickness { get; set; }
		[Field("inner_diameter")]
		public virtual Double? InnerDiameter { get; set; }
		[Field("outer_diameter")]
		public virtual Double? OuterDiameter { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Field("fact_mass")]
		public virtual Double? FactMass { get; set; }
		[Field("tech_note")]
		public virtual String TechNote { get; set; }
		[Field("summary_time")]
		public virtual decimal? SummaryTime { get; set; }
		[Reference("group_id", false)]
		public virtual Group Group { get; set; }
		[Reference("detail_id", false)]
		public virtual Detail Detail { get; set; }
		[Reference("material_by_passport_id", false)]
		public virtual Material MaterialByPassport { get; set; }
		[Reference("material_id", false)]
		public virtual Material Material { get; set; }
		[Reference("measure_unit_id", false)]
		public virtual MeasureUnit MeasureUnit { get; set; }
		[Reference("mass_calculation_id", false)]
		public virtual MassCalculation MassCalculation { get; set; }
		[Reference("plan_calculation_id", false)]
		public virtual Calculation PlanCalculation { get; set; }
		[Reference("fact_calculation_id", false)]
		public virtual Calculation FactCalculation { get; set; }
		[Reference("equipment_id", false)]
		public virtual Equipment Equipment { get; set; }
		[Reference("method_id", false)]
		public virtual Method Method { get; set; }
		[Reference("drawing_image_id", false)]
		public virtual Image DrawingImage { get; set; }
		[Reference("customer_id", false)]
		public virtual Contragent Customer { get; set; }
		[Reference("secondary_customer_id", false)]
		public virtual Contragent SecondaryCustomer { get; set; }
	}

	// The class for drawing_flowsheet_machines
	[Table("drawing_flowsheet_machines")]
	public partial class DrawingFlowsheetMachine: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("plate_temperature")]
		public virtual decimal? PlateTemperature { get; set; }
		[Field("cure_time")]
		public virtual decimal? CureTime { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
		[Reference("machine_id", false)]
		public virtual Machine Machine { get; set; }
	}

	// The class for drawing_flowsheet_processes
	[Table("drawing_flowsheet_processes")]
	public partial class DrawingFlowsheetProcess: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32? SortOrder { get; set; }
		[Field("is_included_to_summary")]
		public virtual Boolean? IsIncludedToSummary { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("operation")]
		public virtual String Operation { get; set; }
		[Field("executor")]
		public virtual String Executor { get; set; }
		[Field("var_name")]
		public virtual String VarName { get; set; }
		[Field("norm_time")]
		public virtual decimal NormTime { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
		[Reference("process_id", false)]
		public virtual Process Process { get; set; }
	}

	// The class for drivers
	[Table("drivers")]
	public partial class Driver: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("car_model")]
		public virtual String CarModel { get; set; }
		[Field("number")]
		public virtual String Number { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("document")]
		public virtual String Document { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for employees
	[Table("employees")]
	public partial class Employee: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("code")]
		public virtual String Code { get; set; }
		[Field("full_name")]
		public virtual String FullName { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("job_id", false)]
		public virtual Job Job { get; set; }
	}

	// The class for equipments
	[Table("equipments")]
	public partial class Equipment: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("existance_enum")]
		public virtual Existance ExistanceEnum { get; set; }
		[Field("square")]
		public virtual decimal Square { get; set; }
		[Field("height")]
		public virtual decimal Height { get; set; }
		[Field("form_count")]
		public virtual Int32 FormCount { get; set; }
		[Field("slot_count")]
		public virtual Int32 SlotCount { get; set; }
		[Field("output")]
		public virtual Int32 Output { get; set; }
		[Field("manufacturer")]
		public virtual String Manufacturer { get; set; }
		[Field("lead_time")]
		public virtual Int32? LeadTime { get; set; }
		[Field("complete_date")]
		public virtual DateTime? CompleteDate { get; set; }
		[Field("price")]
		public virtual decimal? Price { get; set; }
		[Field("is_paid")]
		public virtual Boolean IsPaid { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for equipment_payments
	[Table("equipment_payments")]
	public partial class EquipmentPayment: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("payment_date")]
		public virtual DateTime PaymentDate { get; set; }
		[Field("sum")]
		public virtual decimal Sum { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
	}

	// The class for groups
	[Table("groups")]
	public partial class Group: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for images
	[Table("images")]
	public partial class Image: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("data")]
		public virtual byte[] Data { get; set; }
	}

	// The class for jobs
	[Table("jobs")]
	public partial class Job: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
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
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("plate_size")]
		public virtual String PlateSize { get; set; }
		[Field("inv_number")]
		public virtual String InvNumber { get; set; }
		[Field("plate_count")]
		public virtual Int32? PlateCount { get; set; }
		[Field("plate_power")]
		public virtual decimal? PlatePower { get; set; }
		[Field("engine_power")]
		public virtual decimal? EnginePower { get; set; }
		[Field("total_power")]
		public virtual decimal? TotalPower { get; set; }
		[Field("power_price")]
		public virtual decimal? PowerPrice { get; set; }
		[Field("time_price")]
		public virtual decimal? TimePrice { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for mass_calculations
	[Table("mass_calculations")]
	public partial class MassCalculation: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("detail_type_enum")]
		public virtual DetailType DetailTypeEnum { get; set; }
		[Field("material_density")]
		public virtual Double? MaterialDensity { get; set; }
		[Field("rnd_d_shn")]
		public virtual Double? RndDShn { get; set; }
		[Field("rnd_s1")]
		public virtual Double? RndS1 { get; set; }
		[Field("rnd_s2")]
		public virtual Double? RndS2 { get; set; }
		[Field("rnd_d_nar")]
		public virtual Double? RndDNar { get; set; }
		[Field("rnd_d_vn")]
		public virtual Double? RndDVn { get; set; }
		[Field("rnd_d_sr")]
		public virtual Double? RndDSr { get; set; }
		[Field("rnd_m_ras")]
		public virtual Double? RndMRas { get; set; }
		[Field("sq_s")]
		public virtual Double? SqS { get; set; }
		[Field("sq_l")]
		public virtual Double? SqL { get; set; }
		[Field("sq_b")]
		public virtual Double? SqB { get; set; }
		[Field("sq_l1")]
		public virtual Double? SqL1 { get; set; }
		[Field("sq_b1")]
		public virtual Double? SqB1 { get; set; }
		[Field("sq_d_vn")]
		public virtual Double? SqDVn { get; set; }
		[Field("vl_s")]
		public virtual Double? VlS { get; set; }
		[Field("vl_l")]
		public virtual Double? VlL { get; set; }
		[Field("vl_b")]
		public virtual Double? VlB { get; set; }
		[Field("vl_l1")]
		public virtual Double? VlL1 { get; set; }
		[Field("vl_b1")]
		public virtual Double? VlB1 { get; set; }
		[Field("mass_formula")]
		public virtual String MassFormula { get; set; }
	}

	// The class for materials
	[Table("materials")]
	public partial class Material: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
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
		public virtual decimal? Price { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for material_arrival_records
	[Table("material_arrival_records")]
	public partial class MaterialArrivalRecord: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("invoice_number")]
		public virtual String InvoiceNumber { get; set; }
		[Field("invoice_sum")]
		public virtual decimal InvoiceSum { get; set; }
		[Field("waybill_date")]
		public virtual DateTime WaybillDate { get; set; }
		[Field("waybill_number")]
		public virtual String WaybillNumber { get; set; }
		[Field("price")]
		public virtual decimal Price { get; set; }
		[Field("count")]
		public virtual decimal Count { get; set; }
		[Field("forwarded_to")]
		public virtual String ForwardedTo { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("supplier_id", false)]
		public virtual Contragent Supplier { get; set; }
		[Reference("material_id", false)]
		public virtual Material Material { get; set; }
		[Reference("measure_unit_id", false)]
		public virtual MeasureUnit MeasureUnit { get; set; }
	}

	// The class for measure_units
	[Table("measure_units")]
	public partial class MeasureUnit: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
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
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
	}

	// The class for payments
	[Table("payments")]
	public partial class Payment: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("payment_date")]
		public virtual DateTime PaymentDate { get; set; }
		[Field("payment_doc_number")]
		public virtual String PaymentDocNumber { get; set; }
		[Field("invoice_facture")]
		public virtual String InvoiceFacture { get; set; }
		[Field("sum")]
		public virtual decimal Sum { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("request_id", false)]
		public virtual Request Request { get; set; }
	}

	// The class for processes
	[Table("processes")]
	public partial class Process: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("process_type_enum")]
		public virtual ProcessType ProcessTypeEnum { get; set; }
		[Field("name")]
		public virtual String Name { get; set; }
		[Field("default_operation")]
		public virtual String DefaultOperation { get; set; }
		[Field("default_executor")]
		public virtual String DefaultExecutor { get; set; }
		[Field("variable_name")]
		public virtual String VariableName { get; set; }
		[Field("default_norm_time")]
		public virtual decimal? DefaultNormTime { get; set; }
	}

	// The class for report_of_completion_items
	[Table("report_of_completion_items")]
	public partial class ReportOfCompletionItem: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("equipment_type_enum")]
		public virtual EquipmentType EquipmentTypeEnum { get; set; }
		[Field("count")]
		public virtual Int32 Count { get; set; }
		[Reference("request_id", false)]
		public virtual Request Request { get; set; }
	}

	// The class for requests
	[Table("requests")]
	public partial class Request: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("number")]
		public virtual Int32 Number { get; set; }
		[Field("reg_date")]
		public virtual DateTime RegDate { get; set; }
		[Field("work_start_date")]
		public virtual DateTime? WorkStartDate { get; set; }
		[Field("ship_date")]
		public virtual DateTime? ShipDate { get; set; }
		[Field("invoice_date")]
		public virtual DateTime? InvoiceDate { get; set; }
		[Field("lead_time")]
		public virtual Int32? LeadTime { get; set; }
		[Field("sum")]
		public virtual decimal? Sum { get; set; }
		[Field("is_paid")]
		public virtual Boolean IsPaid { get; set; }
		[Field("complete_sum")]
		public virtual decimal? CompleteSum { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("contract_id", false)]
		public virtual Contract Contract { get; set; }
		[Reference("customer_id", false)]
		public virtual Contragent Customer { get; set; }
		[Reference("manufacturer_id", false)]
		public virtual Contragent Manufacturer { get; set; }
	}

	// The class for request_details
	[Table("request_details")]
	public partial class RequestDetail: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("additional_info")]
		public virtual String AdditionalInfo { get; set; }
		[Field("equipment_lead_time")]
		public virtual Int32? EquipmentLeadTime { get; set; }
		[Field("count")]
		public virtual Int32 Count { get; set; }
		[Field("price")]
		public virtual decimal Price { get; set; }
		[Field("calculation_price")]
		public virtual decimal? CalculationPrice { get; set; }
		[Field("sum")]
		public virtual decimal Sum { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("request_detail_state_enum")]
		public virtual RequestDetailState RequestDetailStateEnum { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("request_id", false)]
		public virtual Request Request { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
		[Reference("group_id", false)]
		public virtual Group Group { get; set; }
		[Reference("detail_id", false)]
		public virtual Detail Detail { get; set; }
		[Reference("material_id", false)]
		public virtual Material Material { get; set; }
	}

	// The class for rolling_records
	[Table("rolling_records")]
	public partial class RollingRecord: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("rolling_date")]
		public virtual DateTime RollingDate { get; set; }
		[Field("count")]
		public virtual Int32 Count { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("customer_id", false)]
		public virtual Contragent Customer { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
		[Reference("material_id", false)]
		public virtual Material Material { get; set; }
	}

	// The class for shaving_records
	[Table("shaving_records")]
	public partial class ShavingRecord: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("shave_date")]
		public virtual DateTime ShaveDate { get; set; }
		[Field("input_count")]
		public virtual Int32 InputCount { get; set; }
		[Field("flaw_count")]
		public virtual Int32 FlawCount { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("shaver_employee_id", false)]
		public virtual Employee ShaverEmployee { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
		[Reference("maker_employee_id", false)]
		public virtual Employee MakerEmployee { get; set; }
	}

	// The class for shipments
	[Table("shipments")]
	public partial class Shipment: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("date")]
		public virtual DateTime Date { get; set; }
		[Field("is_replace")]
		public virtual Boolean IsReplace { get; set; }
		[Field("is_addition")]
		public virtual Boolean IsAddition { get; set; }
		[Field("trip_ticket")]
		public virtual String TripTicket { get; set; }
		[Field("authority_letter")]
		public virtual String AuthorityLetter { get; set; }
		[Field("exemplar")]
		public virtual Int32? Exemplar { get; set; }
		[Field("place_count")]
		public virtual Int32? PlaceCount { get; set; }
		[Field("recipient_responsible")]
		public virtual String RecipientResponsible { get; set; }
		[Field("delivery_responsible")]
		public virtual String DeliveryResponsible { get; set; }
		[Field("delivery_sum")]
		public virtual decimal? DeliverySum { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("request_id", false)]
		public virtual Request Request { get; set; }
		[Reference("recipient_id", false)]
		public virtual Contragent Recipient { get; set; }
		[Reference("payer_id", false)]
		public virtual Contragent Payer { get; set; }
		[Reference("payment_id", false)]
		public virtual Payment Payment { get; set; }
		[Reference("driver_id", false)]
		public virtual Driver Driver { get; set; }
	}

	// The class for shipment_items
	[Table("shipment_items")]
	public partial class ShipmentItem: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("count")]
		public virtual Int32 Count { get; set; }
		[Field("price")]
		public virtual decimal Price { get; set; }
		[Field("nds_percent")]
		public virtual Double NdsPercent { get; set; }
		[Field("pack_type")]
		public virtual String PackType { get; set; }
		[Field("count_in_place")]
		public virtual Int32? CountInPlace { get; set; }
		[Field("count_of_places")]
		public virtual Int32? CountOfPlaces { get; set; }
		[Field("batch_numbers")]
		public virtual String BatchNumbers { get; set; }
		[Reference("shipment_id", false)]
		public virtual Shipment Shipment { get; set; }
		[Reference("request_detail_id", false)]
		public virtual RequestDetail RequestDetail { get; set; }
	}

	// The class for shipment_item_work_items
	[Table("shipment_item_work_items")]
	public partial class ShipmentItemWorkItem: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("count")]
		public virtual Int32 Count { get; set; }
		[Reference("shipment_item_id", false)]
		public virtual ShipmentItem ShipmentItem { get; set; }
		[Reference("work_item_id", false)]
		public virtual WorkItem WorkItem { get; set; }
	}

	// The class for shipped_product_records
	[Table("shipped_product_records")]
	public partial class ShippedProductRecord: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("pay_doc_number")]
		public virtual String PayDocNumber { get; set; }
		[Field("pay_doc_date")]
		public virtual DateTime PayDocDate { get; set; }
		[Field("advance_sum")]
		public virtual decimal? AdvanceSum { get; set; }
		[Field("shipment_date")]
		public virtual DateTime ShipmentDate { get; set; }
		[Field("tax_invoice_number")]
		public virtual String TaxInvoiceNumber { get; set; }
		[Field("sum")]
		public virtual decimal Sum { get; set; }
		[Field("equipment_sum")]
		public virtual decimal? EquipmentSum { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Reference("request_id", false)]
		public virtual Request Request { get; set; }
		[Reference("equipment_id", false)]
		public virtual Equipment Equipment { get; set; }
		[Reference("employee_id", false)]
		public virtual Employee Employee { get; set; }
	}

	// The class for shipping_order_records
	[Table("shipping_order_records")]
	public partial class ShippingOrderRecord: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("order_date")]
		public virtual DateTime OrderDate { get; set; }
		[Field("count")]
		public virtual Int32 Count { get; set; }
		[Field("is_deleted")]
		public virtual Boolean IsDeleted { get; set; }
		[Reference("customer_id", false)]
		public virtual Contragent Customer { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
	}

	// The class for work_items
	[Table("work_items")]
	public partial class WorkItem: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("work_date")]
		public virtual DateTime WorkDate { get; set; }
		[Field("sort_order")]
		public virtual Int32 SortOrder { get; set; }
		[Field("request_count")]
		public virtual Int32? RequestCount { get; set; }
		[Field("task_count")]
		public virtual Int32? TaskCount { get; set; }
		[Field("done_count")]
		public virtual Int32? DoneCount { get; set; }
		[Field("rejected_count")]
		public virtual Int32? RejectedCount { get; set; }
		[Field("note")]
		public virtual String Note { get; set; }
		[Field("is_parallel")]
		public virtual Boolean IsParallel { get; set; }
		[Field("batch_number")]
		public virtual String BatchNumber { get; set; }
		[Reference("drawing_id", false)]
		public virtual Drawing Drawing { get; set; }
		[Reference("employee_id", false)]
		public virtual Employee Employee { get; set; }
		[Reference("flowsheet_machine_id", false)]
		public virtual DrawingFlowsheetMachine FlowsheetMachine { get; set; }
	}

	// The class for work_item_package
	[Table("work_item_package")]
	public partial class WorkItemPackage: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("date")]
		public virtual DateTime Date { get; set; }
		[Field("block")]
		public virtual String Block { get; set; }
		[Reference("employee_id", false)]
		public virtual Employee Employee { get; set; }
	}

	// The class for work_item_package_machines
	[Table("work_item_package_machines")]
	public partial class WorkItemPackageMachine: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("full_working_time")]
		public virtual Int32 FullWorkingTime { get; set; }
		[Field("package_working_time")]
		public virtual Int32 PackageWorkingTime { get; set; }
		[Reference("work_item_package_id", false)]
		public virtual WorkItemPackage WorkItemPackage { get; set; }
		[Reference("flowsheet_machine_id", false)]
		public virtual DrawingFlowsheetMachine FlowsheetMachine { get; set; }
	}

	// The class for work_item_request_details
	[Table("work_item_request_details")]
	public partial class WorkItemRequestDetail: IIdentifiedEntity
	{
		[Field("id")]
		public virtual Int32 Id { get; protected set; }
		[Field("sort_order")]
		public virtual Int32? SortOrder { get; set; }
		[Field("done_count")]
		public virtual Int32 DoneCount { get; set; }
		[Reference("work_item_id", false)]
		public virtual WorkItem WorkItem { get; set; }
		[Reference("request_detail_id", false)]
		public virtual RequestDetail RequestDetail { get; set; }
	}

}
