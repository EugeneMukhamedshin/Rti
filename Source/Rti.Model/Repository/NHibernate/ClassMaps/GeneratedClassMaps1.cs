
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
			Map(o => o.Drawing, "drawing");
			Map(o => o.Name, "name");
			Map(o => o.Existance, "existance");
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
			Id(o => o.Id, "ID");
			Map(o => o.SortOrder, "sort_order");
			Map(o => o.Name, "name");
			Map(o => o.Note, "note");
			Map(o => o.IsDeleted, "is_deleted");
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

}
