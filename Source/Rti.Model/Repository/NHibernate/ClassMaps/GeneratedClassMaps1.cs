
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
			Id(o => o.Id, "ID");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Type, "type");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.AdditionalInfo, "additional_info");
			Map(o => o.Code, "code");
			Map(o => o.MassWithShruff, "mass_with_shruff");
			Map(o => o.Price, "price");
			Map(o => o.ShavingPrice, "shaving_price");
			Map(o => o.CalculationPrice, "calculation_price");
			Map(o => o.Width, "width");
			Map(o => o.Length, "length");
			Map(o => o.Thickness, "thickness");
			Map(o => o.InnerDiameter, "inner_diameter");
			Map(o => o.OuterDiameter, "outer_diameter");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Group, "group_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Detail, "detail_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MaterialByPassport, "material_by_passport_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Material, "material_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MeasureUnit, "measure_unit_id").Fetch.Join().Not.LazyLoad();
			References(o => o.MassCalculation, "mass_calculation_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Equipment, "equipment_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Method, "method_id").Fetch.Join().Not.LazyLoad();
			References(o => o.DrawingImage, "drawing_image_id").Fetch.Join().Not.LazyLoad();
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Existance, "existance");
			Map(o => o.Square, "square");
			Map(o => o.FormCount, "form_count");
			Map(o => o.SlotCount, "slot_count");
			Map(o => o.Output, "output");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Group, "group_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
			Map(o => o.DetailTypeEnum, "detail_type_enum");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
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
			Id(o => o.Id, "ID");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
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
			Id(o => o.Id, "ID");
			Map(o => o.Number, "number");
			Map(o => o.RegDate, "reg_date");
			Map(o => o.ShipDate, "ship_date");
			Map(o => o.LeadTime, "lead_time");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Customer, "customer_id").Fetch.Join().Not.LazyLoad();
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
			Id(o => o.Id, "ID");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.EquipmentExistance, "equipment_existance");
			Map(o => o.AdditionalInfo, "additional_info");
			Map(o => o.EquipmentLeadTime, "equipment_lead_time");
			Map(o => o.Count, "count");
			Map(o => o.Price, "price");
			Map(o => o.CalculationPrice, "calculation_price");
			Map(o => o.Sum, "sum");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
			References(o => o.Request, "request_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Drawing, "drawing_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Group, "group_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Detail, "detail_id").Fetch.Join().Not.LazyLoad();
			References(o => o.Material, "material_id").Fetch.Join().Not.LazyLoad();
			OnInitialized();
		}
	}

}
