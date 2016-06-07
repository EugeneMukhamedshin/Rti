
using Rti.Model.Domain;
using FluentNHibernate.Mapping;

namespace Rti.Model.Repository.NHibernate.ClassMaps
{
	// The classmap for additional_infos
	public partial class AdditionalInfoMap : BaseMap<Rti.Model.Domain.AdditionalInfo>
	{
		public AdditionalInfoMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("additional_infos");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for calculations
	public partial class CalculationMap : BaseMap<Rti.Model.Domain.Calculation>
	{
		public CalculationMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("calculations");
			Id(o => o.Id, "id");
			Map(o => o.MainMaterial, "main_material");
			Map(o => o.Rubber, "rubber");
			Map(o => o.Clue, "clue");
			Map(o => o.Armature, "armature");
			Map(o => o.Sand, "sand");
			Map(o => o.Textile, "textile");
			Map(o => o.OtherMaterial, "other_material");
			Map(o => o.Transport, "transport");
			Map(o => o.MainSalary, "main_salary");
			Map(o => o.AdditionalSalary, "additional_salary");
			Map(o => o.FixedTax, "fixed_tax");
			Map(o => o.TotalDivision, "total_division");
			Map(o => o.TotalManufacture, "total_manufacture");
			Map(o => o.MainSummary, "main_summary");
			Map(o => o.PowerForFormed, "power_for_formed");
			Map(o => o.OtherPower, "other_power");
			Map(o => o.MainAndPowerSummary, "main_and_power_summary");
			Map(o => o.Unforseen, "unforseen");
			Map(o => o.NetCost, "net_cost");
			Map(o => o.Profitability, "profitability");
			Map(o => o.Price, "price");
			Map(o => o.NdsTax, "nds_tax");
			Map(o => o.Summary, "summary");
			Map(o => o.Note, "note");
			OnInitialized();
		}
	}

	// The classmap for constants
	public partial class ConstantMap : BaseMap<Rti.Model.Domain.Constant>
	{
		public ConstantMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("constants");
			Id(o => o.Id, "id");
			Map(o => o.KTr, "k_tr");
			Map(o => o.KEsn, "k_esn");
			Map(o => o.KObCeh, "k_ob_ceh");
			Map(o => o.KObPr, "k_ob_pr");
			Map(o => o.KEl, "k_el");
			Map(o => o.KNep, "k_nep");
			Map(o => o.KRen, "k_ren");
			Map(o => o.Nds, "nds");
			Map(o => o.KSt, "k_st");
			Map(o => o.DateFrom, "date_from");
			Map(o => o.DateTo, "date_to");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for contragents
	public partial class ContragentMap : BaseMap<Rti.Model.Domain.Contragent>
	{
		public ContragentMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("contragents");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.ContragentTypeEnum, "contragent_type_enum").CustomType<ContragentType>();
			Map(o => o.Address, "address");
			Map(o => o.Director, "director");
			Map(o => o.Trustee, "trustee");
			Map(o => o.Phone, "phone");
			Map(o => o.Grounding, "grounding");
			Map(o => o.Inn, "inn");
			Map(o => o.Kpp, "kpp");
			Map(o => o.Account, "account");
			Map(o => o.CorrAccount, "corr_account");
			Map(o => o.Okved, "okved");
			Map(o => o.Okato, "okato");
			Map(o => o.Okpo, "okpo");
			Map(o => o.Ogrn, "ogrn");
			Map(o => o.Bik, "bik");
			Map(o => o.Bank, "bank");
			Map(o => o.Email, "email");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for details
	public partial class DetailMap : BaseMap<Rti.Model.Domain.Detail>
	{
		public DetailMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("details");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for drawings
	public partial class DrawingMap : BaseMap<Rti.Model.Domain.Drawing>
	{
		public DrawingMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("drawings");
			Id(o => o.Id, "id");
			Map(o => o.CreationDate, "creation_date");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.AdditionalInfo, "additional_info");
			Map(o => o.Code, "code");
			Map(o => o.ShruffPercent, "shruff_percent");
			Map(o => o.MassWithShruff, "mass_with_shruff");
			Map(o => o.Price, "price");
			Map(o => o.ShavingPrice, "shaving_price");
			Map(o => o.CalculationPriceManual, "calculation_price_manual");
			Map(o => o.Width, "width");
			Map(o => o.Length, "length");
			Map(o => o.Thickness, "thickness");
			Map(o => o.InnerDiameter, "inner_diameter");
			Map(o => o.OuterDiameter, "outer_diameter");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			Map(o => o.FactMass, "fact_mass");
			Map(o => o.TechNote, "tech_note");
			References(o => o.Group, "group_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Detail, "detail_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MaterialByPassport, "material_by_passport_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Material, "material_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MeasureUnit, "measure_unit_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MassCalculation, "mass_calculation_id").Fetch.Join().Not.LazyLoad();
			References(o => o.PlanCalculation, "plan_calculation_id").Fetch.Join().Not.LazyLoad();
			References(o => o.FactCalculation, "fact_calculation_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Equipment, "equipment_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Method, "method_id").Fetch.Join().Not.LazyLoad();
			References(o => o.DrawingImage, "drawing_image_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Customer, "customer_id").Fetch.Join().Not.LazyLoad();
			References(o => o.SecondaryCustomer, "secondary_customer_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for drawing_flowsheet_machines
	public partial class DrawingFlowsheetMachineMap : BaseMap<Rti.Model.Domain.DrawingFlowsheetMachine>
	{
		public DrawingFlowsheetMachineMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("drawing_flowsheet_machines");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.PlateTemperature, "plate_temperature");
			Map(o => o.CureTime, "cure_time");
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Machine, "machine_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for drawing_flowsheet_processes
	public partial class DrawingFlowsheetProcessMap : BaseMap<Rti.Model.Domain.DrawingFlowsheetProcess>
	{
		public DrawingFlowsheetProcessMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("drawing_flowsheet_processes");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Operation, "operation");
			Map(o => o.Executor, "executor");
			Map(o => o.VarName, "var_name");
			Map(o => o.NormTime, "norm_time");
			Map(o => o.Note, "note");
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Process, "process_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for drivers
	public partial class DriverMap : BaseMap<Rti.Model.Domain.Driver>
	{
		public DriverMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("drivers");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.CarModel, "car_model");
			Map(o => o.Number, "number");
			Map(o => o.Name, "name");
			Map(o => o.Document, "document");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for employees
	public partial class EmployeeMap : BaseMap<Rti.Model.Domain.Employee>
	{
		public EmployeeMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("employees");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Code, "code");
			Map(o => o.FullName, "full_name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Job, "job_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for equipments
	public partial class EquipmentMap : BaseMap<Rti.Model.Domain.Equipment>
	{
		public EquipmentMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("equipments");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.ExistanceEnum, "existance_enum").CustomType<Existance>();
			Map(o => o.Square, "square");
			Map(o => o.Height, "height");
			Map(o => o.FormCount, "form_count");
			Map(o => o.SlotCount, "slot_count");
			Map(o => o.Output, "output");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for groups
	public partial class GroupMap : BaseMap<Rti.Model.Domain.Group>
	{
		public GroupMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("groups");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for images
	public partial class ImageMap : BaseMap<Rti.Model.Domain.Image>
	{
		public ImageMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("images");
			Id(o => o.Id, "id");
			OnInitialized();
		}
	}

	// The classmap for invoices
	public partial class InvoiceMap : BaseMap<Rti.Model.Domain.Invoice>
	{
		public InvoiceMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("invoices");
			Id(o => o.Id, "id");
			Map(o => o.IsDeleted, "is_deleted");
			Map(o => o.InvoiceNumber, "invoice_number");
			Map(o => o.InvoiceDate, "invoice_date");
			References(o => o.Request, "request_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for jobs
	public partial class JobMap : BaseMap<Rti.Model.Domain.Job>
	{
		public JobMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("jobs");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Login, "login");
			Map(o => o.Password, "password");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for machines
	public partial class MachineMap : BaseMap<Rti.Model.Domain.Machine>
	{
		public MachineMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("machines");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.PlateSize, "plate_size");
			Map(o => o.InvNumber, "inv_number");
			Map(o => o.PlateCount, "plate_count");
			Map(o => o.PlatePower, "plate_power");
			Map(o => o.EnginePower, "engine_power");
			Map(o => o.TotalPower, "total_power");
			Map(o => o.PowerPrice, "power_price");
			Map(o => o.TimePrice, "time_price");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for mass_calculations
	public partial class MassCalculationMap : BaseMap<Rti.Model.Domain.MassCalculation>
	{
		public MassCalculationMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("mass_calculations");
			Id(o => o.Id, "id");
			Map(o => o.DetailTypeEnum, "detail_type_enum").CustomType<DetailType>();
			Map(o => o.MaterialDensity, "material_density");
			Map(o => o.RndDShn, "rnd_d_shn");
			Map(o => o.RndS1, "rnd_s1");
			Map(o => o.RndS2, "rnd_s2");
			Map(o => o.RndDNar, "rnd_d_nar");
			Map(o => o.RndDVn, "rnd_d_vn");
			Map(o => o.RndDSr, "rnd_d_sr");
			Map(o => o.RndMRas, "rnd_m_ras");
			Map(o => o.SqS, "sq_s");
			Map(o => o.SqL, "sq_l");
			Map(o => o.SqB, "sq_b");
			Map(o => o.SqL1, "sq_l1");
			Map(o => o.SqB1, "sq_b1");
			Map(o => o.SqDVn, "sq_d_vn");
			Map(o => o.VlS, "vl_s");
			Map(o => o.VlL, "vl_l");
			Map(o => o.VlB, "vl_b");
			Map(o => o.VlL1, "vl_l1");
			Map(o => o.VlB1, "vl_b1");
			Map(o => o.MassFormula, "mass_formula");
			OnInitialized();
		}
	}

	// The classmap for materials
	public partial class MaterialMap : BaseMap<Rti.Model.Domain.Material>
	{
		public MaterialMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("materials");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.TechConditions, "tech_conditions");
			Map(o => o.Density, "density");
			Map(o => o.Thickness, "thickness");
			Map(o => o.Length, "length");
			Map(o => o.Width, "width");
			Map(o => o.Price, "price");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for material_arrival_records
	public partial class MaterialArrivalRecordMap : BaseMap<Rti.Model.Domain.MaterialArrivalRecord>
	{
		public MaterialArrivalRecordMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("material_arrival_records");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.InvoiceNumber, "invoice_number");
			Map(o => o.InvoiceSum, "invoice_sum");
			Map(o => o.WaybillDate, "waybill_date");
			Map(o => o.WaybillNumber, "waybill_number");
			Map(o => o.Price, "price");
			Map(o => o.Count, "count");
			Map(o => o.ForwardedTo, "forwarded_to");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Supplier, "supplier_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Material, "material_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MeasureUnit, "measure_unit_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for measure_units
	public partial class MeasureUnitMap : BaseMap<Rti.Model.Domain.MeasureUnit>
	{
		public MeasureUnitMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("measure_units");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Code, "code");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for methods
	public partial class MethodMap : BaseMap<Rti.Model.Domain.Method>
	{
		public MethodMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("methods");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			OnInitialized();
		}
	}

	// The classmap for payments
	public partial class PaymentMap : BaseMap<Rti.Model.Domain.Payment>
	{
		public PaymentMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("payments");
			Id(o => o.Id, "id");
			Map(o => o.PaymentDate, "payment_date");
			Map(o => o.PaymentDocNumber, "payment_doc_number");
			Map(o => o.Sum, "sum");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Request, "request_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for processes
	public partial class ProcessMap : BaseMap<Rti.Model.Domain.Process>
	{
		public ProcessMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("processes");
			Id(o => o.Id, "id");
			Map(o => o.ProcessTypeEnum, "process_type_enum").CustomType<ProcessType>();
			Map(o => o.Name, "name");
			Map(o => o.DefaultOperation, "default_operation");
			Map(o => o.DefaultExecutor, "default_executor");
			Map(o => o.VariableName, "variable_name");
			Map(o => o.DefaultNormTime, "default_norm_time");
			OnInitialized();
		}
	}

	// The classmap for report_of_completion_items
	public partial class ReportOfCompletionItemMap : BaseMap<Rti.Model.Domain.ReportOfCompletionItem>
	{
		public ReportOfCompletionItemMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("report_of_completion_items");
			Id(o => o.Id, "id");
			Map(o => o.EquipmentTypeEnum, "equipment_type_enum").CustomType<EquipmentType>();
			Map(o => o.Count, "count");
			References(o => o.Request, "request_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for requests
	public partial class RequestMap : BaseMap<Rti.Model.Domain.Request>
	{
		public RequestMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("requests");
			Id(o => o.Id, "id");
			Map(o => o.Number, "number");
			Map(o => o.RegDate, "reg_date");
			Map(o => o.ShipDate, "ship_date");
			Map(o => o.InvoiceDate, "invoice_date");
			Map(o => o.LeadTime, "lead_time");
			Map(o => o.IsPaid, "is_paid");
			Map(o => o.CompleteSum, "complete_sum");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Customer, "customer_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Manufacturer, "manufacturer_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for request_details
	public partial class RequestDetailMap : BaseMap<Rti.Model.Domain.RequestDetail>
	{
		public RequestDetailMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("request_details");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.AdditionalInfo, "additional_info");
			Map(o => o.EquipmentLeadTime, "equipment_lead_time");
			Map(o => o.Count, "count");
			Map(o => o.Price, "price");
			Map(o => o.CalculationPrice, "calculation_price");
			Map(o => o.Sum, "sum");
			Map(o => o.Note, "note");
			Map(o => o.RequestDetailStateEnum, "request_detail_state_enum").CustomType<RequestDetailState>();
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Request, "request_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Group, "group_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Detail, "detail_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Material, "material_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for rolling_records
	public partial class RollingRecordMap : BaseMap<Rti.Model.Domain.RollingRecord>
	{
		public RollingRecordMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("rolling_records");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.RollingDate, "rolling_date");
			Map(o => o.Count, "count");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Customer, "customer_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Material, "material_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for shaving_records
	public partial class ShavingRecordMap : BaseMap<Rti.Model.Domain.ShavingRecord>
	{
		public ShavingRecordMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("shaving_records");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.ShaveDate, "shave_date");
			Map(o => o.InputCount, "input_count");
			Map(o => o.FlawCount, "flaw_count");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.ShaverEmployee, "shaver_employee_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MakerEmployee, "maker_employee_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for shipments
	public partial class ShipmentMap : BaseMap<Rti.Model.Domain.Shipment>
	{
		public ShipmentMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("shipments");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Date, "date");
			Map(o => o.IsReplace, "is_replace");
			Map(o => o.IsAddition, "is_addition");
			Map(o => o.TripTicket, "trip_ticket");
			Map(o => o.AuthorityLetter, "authority_letter");
			Map(o => o.Exemplar, "exemplar");
			Map(o => o.PlaceCount, "place_count");
			Map(o => o.RecipientResponsible, "recipient_responsible");
			Map(o => o.DeliveryResponsible, "delivery_responsible");
			Map(o => o.DeliverySum, "delivery_sum");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Request, "request_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Recipient, "recipient_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Payment, "payment_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Driver, "driver_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for shipment_items
	public partial class ShipmentItemMap : BaseMap<Rti.Model.Domain.ShipmentItem>
	{
		public ShipmentItemMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("shipment_items");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Count, "count");
			Map(o => o.Price, "price");
			Map(o => o.NdsPercent, "nds_percent");
			Map(o => o.PackType, "pack_type");
			Map(o => o.CountInPlace, "count_in_place");
			Map(o => o.CountOfPlaces, "count_of_places");
			Map(o => o.BatchNumbers, "batch_numbers");
			References(o => o.Shipment, "shipment_id").Fetch.Join().Not.LazyLoad();
			References(o => o.RequestDetail, "request_detail_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for shipment_item_work_items
	public partial class ShipmentItemWorkItemMap : BaseMap<Rti.Model.Domain.ShipmentItemWorkItem>
	{
		public ShipmentItemWorkItemMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("shipment_item_work_items");
			Id(o => o.Id, "id");
			Map(o => o.Count, "count");
			References(o => o.ShipmentItem, "shipment_item_id").Fetch.Join().Not.LazyLoad();
			References(o => o.WorkItem, "work_item_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for shipped_product_records
	public partial class ShippedProductRecordMap : BaseMap<Rti.Model.Domain.ShippedProductRecord>
	{
		public ShippedProductRecordMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("shipped_product_records");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.PayDocNumber, "pay_doc_number");
			Map(o => o.PayDocDate, "pay_doc_date");
			Map(o => o.AdvanceSum, "advance_sum");
			Map(o => o.ShipmentDate, "shipment_date");
			Map(o => o.TaxInvoiceNumber, "tax_invoice_number");
			Map(o => o.Sum, "sum");
			Map(o => o.EquipmentSum, "equipment_sum");
			Map(o => o.Note, "note");
			References(o => o.Request, "request_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Equipment, "equipment_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Employee, "employee_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for shipping_order_records
	public partial class ShippingOrderRecordMap : BaseMap<Rti.Model.Domain.ShippingOrderRecord>
	{
		public ShippingOrderRecordMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("shipping_order_records");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.OrderDate, "order_date");
			Map(o => o.Count, "count");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Customer, "customer_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for work_items
	public partial class WorkItemMap : BaseMap<Rti.Model.Domain.WorkItem>
	{
		public WorkItemMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("work_items");
			Id(o => o.Id, "id");
			Map(o => o.WorkDate, "work_date");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.RequestCount, "request_count");
			Map(o => o.TaskCount, "task_count");
			Map(o => o.DoneCount, "done_count");
			Map(o => o.RejectedCount, "rejected_count");
			Map(o => o.Note, "note");
			Map(o => o.IsParallel, "is_parallel");
			Map(o => o.BatchNumber, "batch_number");
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Employee, "employee_id").Fetch.Join().Not.LazyLoad();
			References(o => o.FlowsheetMachine, "flowsheet_machine_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for work_item_package
	public partial class WorkItemPackageMap : BaseMap<Rti.Model.Domain.WorkItemPackage>
	{
		public WorkItemPackageMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("work_item_package");
			Id(o => o.Id, "id");
			Map(o => o.Date, "date");
			Map(o => o.Block, "block");
			References(o => o.Employee, "employee_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for work_item_package_machines
	public partial class WorkItemPackageMachineMap : BaseMap<Rti.Model.Domain.WorkItemPackageMachine>
	{
		public WorkItemPackageMachineMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("work_item_package_machines");
			Id(o => o.Id, "id");
			Map(o => o.FullWorkingTime, "full_working_time");
			Map(o => o.PackageWorkingTime, "package_working_time");
			References(o => o.WorkItemPackage, "work_item_package_id").Fetch.Join().Not.LazyLoad();
			References(o => o.FlowsheetMachine, "flowsheet_machine_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

	// The classmap for work_item_request_details
	public partial class WorkItemRequestDetailMap : BaseMap<Rti.Model.Domain.WorkItemRequestDetail>
	{
		public WorkItemRequestDetailMap()
		{
			Initialize();
		}

		private void Initialize()
		{
			Table("work_item_request_details");
			Id(o => o.Id, "id");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.DoneCount, "done_count");
			References(o => o.WorkItem, "work_item_id").Fetch.Join().Not.LazyLoad();
			References(o => o.RequestDetail, "request_detail_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

}
