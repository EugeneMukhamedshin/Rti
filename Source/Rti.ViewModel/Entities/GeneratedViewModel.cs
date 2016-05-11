











using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.Entities
{

	// The viewmodel for AdditionalInfo
	public partial class AdditionalInfoViewModel : EntityViewModel<Rti.Model.Domain.AdditionalInfo, AdditionalInfoViewModel>
	{
		// Конструктор для маппинга
		public AdditionalInfoViewModel() { }

        public AdditionalInfoViewModel(Rti.Model.Domain.AdditionalInfo entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(AdditionalInfoViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override AdditionalInfoViewModel Clone()
		{
			var copy = new AdditionalInfoViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(AdditionalInfoViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((AdditionalInfoViewModel) obj);
        }
	}


	// The viewmodel for Calculation
	public partial class CalculationViewModel : EntityViewModel<Rti.Model.Domain.Calculation, CalculationViewModel>
	{
		// Конструктор для маппинга
		public CalculationViewModel() { }

        public CalculationViewModel(Rti.Model.Domain.Calculation entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Decimal? _mainMaterial;

		private Decimal? _rubber;

		private Decimal? _clue;

		private Decimal? _armature;

		private Decimal? _sand;

		private Decimal? _textile;

		private Decimal? _otherMaterial;

		private Decimal? _transport;

		private Decimal? _mainSalary;

		private Decimal? _additionalSalary;

		private Decimal? _fixedTax;

		private Decimal? _totalDivision;

		private Decimal? _totalManufacture;

		private Decimal? _mainSummary;

		private Decimal? _powerForFormed;

		private Decimal? _otherPower;

		private Decimal? _mainAndPowerSummary;

		private Decimal? _unforseen;

		private Decimal? _netCost;

		private Decimal? _profitability;

		private Decimal? _price;

		private Decimal? _ndsTax;

		private Decimal? _summary;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Decimal? MainMaterial { get { return _mainMaterial; } set { if (Equals(_mainMaterial, value)) return; _mainMaterial = value; OnPropertyChanged("MainMaterial"); } }

		public Decimal? Rubber { get { return _rubber; } set { if (Equals(_rubber, value)) return; _rubber = value; OnPropertyChanged("Rubber"); } }

		public Decimal? Clue { get { return _clue; } set { if (Equals(_clue, value)) return; _clue = value; OnPropertyChanged("Clue"); } }

		public Decimal? Armature { get { return _armature; } set { if (Equals(_armature, value)) return; _armature = value; OnPropertyChanged("Armature"); } }

		public Decimal? Sand { get { return _sand; } set { if (Equals(_sand, value)) return; _sand = value; OnPropertyChanged("Sand"); } }

		public Decimal? Textile { get { return _textile; } set { if (Equals(_textile, value)) return; _textile = value; OnPropertyChanged("Textile"); } }

		public Decimal? OtherMaterial { get { return _otherMaterial; } set { if (Equals(_otherMaterial, value)) return; _otherMaterial = value; OnPropertyChanged("OtherMaterial"); } }

		public Decimal? Transport { get { return _transport; } set { if (Equals(_transport, value)) return; _transport = value; OnPropertyChanged("Transport"); } }

		public Decimal? MainSalary { get { return _mainSalary; } set { if (Equals(_mainSalary, value)) return; _mainSalary = value; OnPropertyChanged("MainSalary"); } }

		public Decimal? AdditionalSalary { get { return _additionalSalary; } set { if (Equals(_additionalSalary, value)) return; _additionalSalary = value; OnPropertyChanged("AdditionalSalary"); } }

		public Decimal? FixedTax { get { return _fixedTax; } set { if (Equals(_fixedTax, value)) return; _fixedTax = value; OnPropertyChanged("FixedTax"); } }

		public Decimal? TotalDivision { get { return _totalDivision; } set { if (Equals(_totalDivision, value)) return; _totalDivision = value; OnPropertyChanged("TotalDivision"); } }

		public Decimal? TotalManufacture { get { return _totalManufacture; } set { if (Equals(_totalManufacture, value)) return; _totalManufacture = value; OnPropertyChanged("TotalManufacture"); } }

		public Decimal? MainSummary { get { return _mainSummary; } set { if (Equals(_mainSummary, value)) return; _mainSummary = value; OnPropertyChanged("MainSummary"); } }

		public Decimal? PowerForFormed { get { return _powerForFormed; } set { if (Equals(_powerForFormed, value)) return; _powerForFormed = value; OnPropertyChanged("PowerForFormed"); } }

		public Decimal? OtherPower { get { return _otherPower; } set { if (Equals(_otherPower, value)) return; _otherPower = value; OnPropertyChanged("OtherPower"); } }

		public Decimal? MainAndPowerSummary { get { return _mainAndPowerSummary; } set { if (Equals(_mainAndPowerSummary, value)) return; _mainAndPowerSummary = value; OnPropertyChanged("MainAndPowerSummary"); } }

		public Decimal? Unforseen { get { return _unforseen; } set { if (Equals(_unforseen, value)) return; _unforseen = value; OnPropertyChanged("Unforseen"); } }

		public Decimal? NetCost { get { return _netCost; } set { if (Equals(_netCost, value)) return; _netCost = value; OnPropertyChanged("NetCost"); } }

		public Decimal? Profitability { get { return _profitability; } set { if (Equals(_profitability, value)) return; _profitability = value; OnPropertyChanged("Profitability"); } }

		public Decimal? Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }

		public Decimal? NdsTax { get { return _ndsTax; } set { if (Equals(_ndsTax, value)) return; _ndsTax = value; OnPropertyChanged("NdsTax"); } }

		public Decimal? Summary { get { return _summary; } set { if (Equals(_summary, value)) return; _summary = value; OnPropertyChanged("Summary"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.MainMaterial = MainMaterial; 

			Entity.Rubber = Rubber; 

			Entity.Clue = Clue; 

			Entity.Armature = Armature; 

			Entity.Sand = Sand; 

			Entity.Textile = Textile; 

			Entity.OtherMaterial = OtherMaterial; 

			Entity.Transport = Transport; 

			Entity.MainSalary = MainSalary; 

			Entity.AdditionalSalary = AdditionalSalary; 

			Entity.FixedTax = FixedTax; 

			Entity.TotalDivision = TotalDivision; 

			Entity.TotalManufacture = TotalManufacture; 

			Entity.MainSummary = MainSummary; 

			Entity.PowerForFormed = PowerForFormed; 

			Entity.OtherPower = OtherPower; 

			Entity.MainAndPowerSummary = MainAndPowerSummary; 

			Entity.Unforseen = Unforseen; 

			Entity.NetCost = NetCost; 

			Entity.Profitability = Profitability; 

			Entity.Price = Price; 

			Entity.NdsTax = NdsTax; 

			Entity.Summary = Summary; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			MainMaterial = Entity.MainMaterial; 

			Rubber = Entity.Rubber; 

			Clue = Entity.Clue; 

			Armature = Entity.Armature; 

			Sand = Entity.Sand; 

			Textile = Entity.Textile; 

			OtherMaterial = Entity.OtherMaterial; 

			Transport = Entity.Transport; 

			MainSalary = Entity.MainSalary; 

			AdditionalSalary = Entity.AdditionalSalary; 

			FixedTax = Entity.FixedTax; 

			TotalDivision = Entity.TotalDivision; 

			TotalManufacture = Entity.TotalManufacture; 

			MainSummary = Entity.MainSummary; 

			PowerForFormed = Entity.PowerForFormed; 

			OtherPower = Entity.OtherPower; 

			MainAndPowerSummary = Entity.MainAndPowerSummary; 

			Unforseen = Entity.Unforseen; 

			NetCost = Entity.NetCost; 

			Profitability = Entity.Profitability; 

			Price = Entity.Price; 

			NdsTax = Entity.NdsTax; 

			Summary = Entity.Summary; 

		}

		public override void CopyTo(CalculationViewModel target)
		{

			target.MainMaterial = MainMaterial; 

			target.Rubber = Rubber; 

			target.Clue = Clue; 

			target.Armature = Armature; 

			target.Sand = Sand; 

			target.Textile = Textile; 

			target.OtherMaterial = OtherMaterial; 

			target.Transport = Transport; 

			target.MainSalary = MainSalary; 

			target.AdditionalSalary = AdditionalSalary; 

			target.FixedTax = FixedTax; 

			target.TotalDivision = TotalDivision; 

			target.TotalManufacture = TotalManufacture; 

			target.MainSummary = MainSummary; 

			target.PowerForFormed = PowerForFormed; 

			target.OtherPower = OtherPower; 

			target.MainAndPowerSummary = MainAndPowerSummary; 

			target.Unforseen = Unforseen; 

			target.NetCost = NetCost; 

			target.Profitability = Profitability; 

			target.Price = Price; 

			target.NdsTax = NdsTax; 

			target.Summary = Summary; 

		}

		public override CalculationViewModel Clone()
		{
			var copy = new CalculationViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(CalculationViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((CalculationViewModel) obj);
        }
	}


	// The viewmodel for Constant
	public partial class ConstantViewModel : EntityViewModel<Rti.Model.Domain.Constant, ConstantViewModel>
	{
		// Конструктор для маппинга
		public ConstantViewModel() { }

        public ConstantViewModel(Rti.Model.Domain.Constant entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Decimal _kTr;

		private Decimal _kEsn;

		private Decimal _kObCeh;

		private Decimal _kObPr;

		private Decimal _kEl;

		private Decimal _kNep;

		private Decimal _kRen;

		private Decimal _nds;

		private Decimal _kSt;

		private DateTime _dateFrom;

		private DateTime _dateTo;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Decimal KTr { get { return _kTr; } set { if (Equals(_kTr, value)) return; _kTr = value; OnPropertyChanged("KTr"); } }

		public Decimal KEsn { get { return _kEsn; } set { if (Equals(_kEsn, value)) return; _kEsn = value; OnPropertyChanged("KEsn"); } }

		public Decimal KObCeh { get { return _kObCeh; } set { if (Equals(_kObCeh, value)) return; _kObCeh = value; OnPropertyChanged("KObCeh"); } }

		public Decimal KObPr { get { return _kObPr; } set { if (Equals(_kObPr, value)) return; _kObPr = value; OnPropertyChanged("KObPr"); } }

		public Decimal KEl { get { return _kEl; } set { if (Equals(_kEl, value)) return; _kEl = value; OnPropertyChanged("KEl"); } }

		public Decimal KNep { get { return _kNep; } set { if (Equals(_kNep, value)) return; _kNep = value; OnPropertyChanged("KNep"); } }

		public Decimal KRen { get { return _kRen; } set { if (Equals(_kRen, value)) return; _kRen = value; OnPropertyChanged("KRen"); } }

		public Decimal Nds { get { return _nds; } set { if (Equals(_nds, value)) return; _nds = value; OnPropertyChanged("Nds"); } }

		public Decimal KSt { get { return _kSt; } set { if (Equals(_kSt, value)) return; _kSt = value; OnPropertyChanged("KSt"); } }

		public DateTime DateFrom { get { return _dateFrom; } set { if (Equals(_dateFrom, value)) return; _dateFrom = value; OnPropertyChanged("DateFrom"); } }

		public DateTime DateTo { get { return _dateTo; } set { if (Equals(_dateTo, value)) return; _dateTo = value; OnPropertyChanged("DateTo"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.KTr = KTr; 

			Entity.KEsn = KEsn; 

			Entity.KObCeh = KObCeh; 

			Entity.KObPr = KObPr; 

			Entity.KEl = KEl; 

			Entity.KNep = KNep; 

			Entity.KRen = KRen; 

			Entity.Nds = Nds; 

			Entity.KSt = KSt; 

			Entity.DateFrom = DateFrom; 

			Entity.DateTo = DateTo; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			KTr = Entity.KTr; 

			KEsn = Entity.KEsn; 

			KObCeh = Entity.KObCeh; 

			KObPr = Entity.KObPr; 

			KEl = Entity.KEl; 

			KNep = Entity.KNep; 

			KRen = Entity.KRen; 

			Nds = Entity.Nds; 

			KSt = Entity.KSt; 

			DateFrom = Entity.DateFrom; 

			DateTo = Entity.DateTo; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(ConstantViewModel target)
		{

			target.KTr = KTr; 

			target.KEsn = KEsn; 

			target.KObCeh = KObCeh; 

			target.KObPr = KObPr; 

			target.KEl = KEl; 

			target.KNep = KNep; 

			target.KRen = KRen; 

			target.Nds = Nds; 

			target.KSt = KSt; 

			target.DateFrom = DateFrom; 

			target.DateTo = DateTo; 

			target.IsDeleted = IsDeleted; 

		}

		public override ConstantViewModel Clone()
		{
			var copy = new ConstantViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ConstantViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ConstantViewModel) obj);
        }
	}


	// The viewmodel for Contragent
	public partial class ContragentViewModel : EntityViewModel<Rti.Model.Domain.Contragent, ContragentViewModel>
	{
		// Конструктор для маппинга
		public ContragentViewModel() { }

        public ContragentViewModel(Rti.Model.Domain.Contragent entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private ContragentType _contragentTypeEnum;

		private String _address;

		private String _director;

		private String _trustee;

		private String _phone;

		private String _grounding;

		private String _inn;

		private String _kpp;

		private String _account;

		private String _corrAccount;

		private String _okved;

		private String _okato;

		private String _okpo;

		private String _ogrn;

		private String _bik;

		private String _bank;

		private String _email;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public ContragentType ContragentTypeEnum { get { return _contragentTypeEnum; } set { if (Equals(_contragentTypeEnum, value)) return; _contragentTypeEnum = value; OnPropertyChanged("ContragentTypeEnum"); } }

		public String Address { get { return _address; } set { if (Equals(_address, value)) return; _address = value; OnPropertyChanged("Address"); } }

		public String Director { get { return _director; } set { if (Equals(_director, value)) return; _director = value; OnPropertyChanged("Director"); } }

		public String Trustee { get { return _trustee; } set { if (Equals(_trustee, value)) return; _trustee = value; OnPropertyChanged("Trustee"); } }

		public String Phone { get { return _phone; } set { if (Equals(_phone, value)) return; _phone = value; OnPropertyChanged("Phone"); } }

		public String Grounding { get { return _grounding; } set { if (Equals(_grounding, value)) return; _grounding = value; OnPropertyChanged("Grounding"); } }

		public String Inn { get { return _inn; } set { if (Equals(_inn, value)) return; _inn = value; OnPropertyChanged("Inn"); } }

		public String Kpp { get { return _kpp; } set { if (Equals(_kpp, value)) return; _kpp = value; OnPropertyChanged("Kpp"); } }

		public String Account { get { return _account; } set { if (Equals(_account, value)) return; _account = value; OnPropertyChanged("Account"); } }

		public String CorrAccount { get { return _corrAccount; } set { if (Equals(_corrAccount, value)) return; _corrAccount = value; OnPropertyChanged("CorrAccount"); } }

		public String Okved { get { return _okved; } set { if (Equals(_okved, value)) return; _okved = value; OnPropertyChanged("Okved"); } }

		public String Okato { get { return _okato; } set { if (Equals(_okato, value)) return; _okato = value; OnPropertyChanged("Okato"); } }

		public String Okpo { get { return _okpo; } set { if (Equals(_okpo, value)) return; _okpo = value; OnPropertyChanged("Okpo"); } }

		public String Ogrn { get { return _ogrn; } set { if (Equals(_ogrn, value)) return; _ogrn = value; OnPropertyChanged("Ogrn"); } }

		public String Bik { get { return _bik; } set { if (Equals(_bik, value)) return; _bik = value; OnPropertyChanged("Bik"); } }

		public String Bank { get { return _bank; } set { if (Equals(_bank, value)) return; _bank = value; OnPropertyChanged("Bank"); } }

		public String Email { get { return _email; } set { if (Equals(_email, value)) return; _email = value; OnPropertyChanged("Email"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.ContragentTypeEnum = ContragentTypeEnum; 

			Entity.Address = Address; 

			Entity.Director = Director; 

			Entity.Trustee = Trustee; 

			Entity.Phone = Phone; 

			Entity.Grounding = Grounding; 

			Entity.Inn = Inn; 

			Entity.Kpp = Kpp; 

			Entity.Account = Account; 

			Entity.CorrAccount = CorrAccount; 

			Entity.Okved = Okved; 

			Entity.Okato = Okato; 

			Entity.Okpo = Okpo; 

			Entity.Ogrn = Ogrn; 

			Entity.Bik = Bik; 

			Entity.Bank = Bank; 

			Entity.Email = Email; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			ContragentTypeEnum = Entity.ContragentTypeEnum; 

			Address = Entity.Address; 

			Director = Entity.Director; 

			Trustee = Entity.Trustee; 

			Phone = Entity.Phone; 

			Grounding = Entity.Grounding; 

			Inn = Entity.Inn; 

			Kpp = Entity.Kpp; 

			Account = Entity.Account; 

			CorrAccount = Entity.CorrAccount; 

			Okved = Entity.Okved; 

			Okato = Entity.Okato; 

			Okpo = Entity.Okpo; 

			Ogrn = Entity.Ogrn; 

			Bik = Entity.Bik; 

			Bank = Entity.Bank; 

			Email = Entity.Email; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(ContragentViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.ContragentTypeEnum = ContragentTypeEnum; 

			target.Address = Address; 

			target.Director = Director; 

			target.Trustee = Trustee; 

			target.Phone = Phone; 

			target.Grounding = Grounding; 

			target.Inn = Inn; 

			target.Kpp = Kpp; 

			target.Account = Account; 

			target.CorrAccount = CorrAccount; 

			target.Okved = Okved; 

			target.Okato = Okato; 

			target.Okpo = Okpo; 

			target.Ogrn = Ogrn; 

			target.Bik = Bik; 

			target.Bank = Bank; 

			target.Email = Email; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override ContragentViewModel Clone()
		{
			var copy = new ContragentViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ContragentViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ContragentViewModel) obj);
        }
	}


	// The viewmodel for DailyWorkPackage
	public partial class DailyWorkPackageViewModel : EntityViewModel<Rti.Model.Domain.DailyWorkPackage, DailyWorkPackageViewModel>
	{
		// Конструктор для маппинга
		public DailyWorkPackageViewModel() { }

        public DailyWorkPackageViewModel(Rti.Model.Domain.DailyWorkPackage entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private DateTime _date;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public DateTime Date { get { return _date; } set { if (Equals(_date, value)) return; _date = value; OnPropertyChanged("Date"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Date = Date; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Date = Entity.Date; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(DailyWorkPackageViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Date = Date; 

			target.IsDeleted = IsDeleted; 

		}

		public override DailyWorkPackageViewModel Clone()
		{
			var copy = new DailyWorkPackageViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DailyWorkPackageViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((DailyWorkPackageViewModel) obj);
        }
	}


	// The viewmodel for DailyWorkPackageDetail
	public partial class DailyWorkPackageDetailViewModel : EntityViewModel<Rti.Model.Domain.DailyWorkPackageDetail, DailyWorkPackageDetailViewModel>
	{
		// Конструктор для маппинга
		public DailyWorkPackageDetailViewModel() { }

        public DailyWorkPackageDetailViewModel(Rti.Model.Domain.DailyWorkPackageDetail entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private Int32? _taskCount;

		private Int32? _doneCount;

		private String _note;

		private DailyWorkPackageViewModel _dailyWorkPackage;

		private DrawingViewModel _drawing;

		private EmployeeViewModel _employee;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public Int32? TaskCount { get { return _taskCount; } set { if (Equals(_taskCount, value)) return; _taskCount = value; OnPropertyChanged("TaskCount"); } }

		public Int32? DoneCount { get { return _doneCount; } set { if (Equals(_doneCount, value)) return; _doneCount = value; OnPropertyChanged("DoneCount"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public DailyWorkPackageViewModel DailyWorkPackage { get { return _dailyWorkPackage; } set { _dailyWorkPackage = value; OnPropertyChanged("DailyWorkPackage"); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }

		public EmployeeViewModel Employee { get { return _employee; } set { _employee = value; OnPropertyChanged("Employee"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.TaskCount = TaskCount; 

			Entity.DoneCount = DoneCount; 

			Entity.Note = Note; 

			Entity.DailyWorkPackage = DailyWorkPackage == null ? null : DailyWorkPackage.Entity; 

			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 

			Entity.Employee = Employee == null ? null : Employee.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			TaskCount = Entity.TaskCount; 

			DoneCount = Entity.DoneCount; 

			Note = Entity.Note; 

			DailyWorkPackage = Entity.DailyWorkPackage == null ? null : new DailyWorkPackageViewModel(Entity.DailyWorkPackage, RepositoryFactory); 

			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 

			Employee = Entity.Employee == null ? null : new EmployeeViewModel(Entity.Employee, RepositoryFactory); 

		}

		public override void CopyTo(DailyWorkPackageDetailViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.TaskCount = TaskCount; 

			target.DoneCount = DoneCount; 

			target.Note = Note; 

			target.DailyWorkPackage = DailyWorkPackage; 

			target.Drawing = Drawing; 

			target.Employee = Employee; 

		}

		public override DailyWorkPackageDetailViewModel Clone()
		{
			var copy = new DailyWorkPackageDetailViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DailyWorkPackageDetailViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((DailyWorkPackageDetailViewModel) obj);
        }
	}


	// The viewmodel for Detail
	public partial class DetailViewModel : EntityViewModel<Rti.Model.Domain.Detail, DetailViewModel>
	{
		// Конструктор для маппинга
		public DetailViewModel() { }

        public DetailViewModel(Rti.Model.Domain.Detail entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(DetailViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override DetailViewModel Clone()
		{
			var copy = new DetailViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DetailViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((DetailViewModel) obj);
        }
	}


	// The viewmodel for Drawing
	public partial class DrawingViewModel : EntityViewModel<Rti.Model.Domain.Drawing, DrawingViewModel>
	{
		// Конструктор для маппинга
		public DrawingViewModel() { }

        public DrawingViewModel(Rti.Model.Domain.Drawing entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private DateTime? _creationDate;

		private Int32 _sortOrder;

		private String _name;

		private String _additionalInfo;

		private String _code;

		private Decimal? _massWithShruff;

		private Decimal? _price;

		private Decimal? _shavingPrice;

		private Decimal? _calculationPriceManual;

		private Double? _width;

		private Double? _length;

		private Double? _thickness;

		private Double? _innerDiameter;

		private Double? _outerDiameter;

		private String _note;

		private Boolean _isDeleted;

		private GroupViewModel _group;

		private DetailViewModel _detail;

		private MaterialViewModel _materialByPassport;

		private MaterialViewModel _material;

		private MeasureUnitViewModel _measureUnit;

		private MassCalculationViewModel _massCalculation;

		private CalculationViewModel _planCalculation;

		private CalculationViewModel _factCalculation;

		private EquipmentViewModel _equipment;

		private MethodViewModel _method;

		private ImageViewModel _drawingImage;

		private FlowsheetViewModel _flowsheet;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public DateTime? CreationDate { get { return _creationDate; } set { if (Equals(_creationDate, value)) return; _creationDate = value; OnPropertyChanged("CreationDate"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String AdditionalInfo { get { return _additionalInfo; } set { if (Equals(_additionalInfo, value)) return; _additionalInfo = value; OnPropertyChanged("AdditionalInfo"); } }

		public String Code { get { return _code; } set { if (Equals(_code, value)) return; _code = value; OnPropertyChanged("Code"); } }

		public Decimal? MassWithShruff { get { return _massWithShruff; } set { if (Equals(_massWithShruff, value)) return; _massWithShruff = value; OnPropertyChanged("MassWithShruff"); } }

		public Decimal? Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }

		public Decimal? ShavingPrice { get { return _shavingPrice; } set { if (Equals(_shavingPrice, value)) return; _shavingPrice = value; OnPropertyChanged("ShavingPrice"); } }

		public Decimal? CalculationPriceManual { get { return _calculationPriceManual; } set { if (Equals(_calculationPriceManual, value)) return; _calculationPriceManual = value; OnPropertyChanged("CalculationPriceManual"); } }

		public Double? Width { get { return _width; } set { if (Equals(_width, value)) return; _width = value; OnPropertyChanged("Width"); } }

		public Double? Length { get { return _length; } set { if (Equals(_length, value)) return; _length = value; OnPropertyChanged("Length"); } }

		public Double? Thickness { get { return _thickness; } set { if (Equals(_thickness, value)) return; _thickness = value; OnPropertyChanged("Thickness"); } }

		public Double? InnerDiameter { get { return _innerDiameter; } set { if (Equals(_innerDiameter, value)) return; _innerDiameter = value; OnPropertyChanged("InnerDiameter"); } }

		public Double? OuterDiameter { get { return _outerDiameter; } set { if (Equals(_outerDiameter, value)) return; _outerDiameter = value; OnPropertyChanged("OuterDiameter"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public GroupViewModel Group { get { return _group; } set { _group = value; OnPropertyChanged("Group"); } }

		public DetailViewModel Detail { get { return _detail; } set { _detail = value; OnPropertyChanged("Detail"); } }

		public MaterialViewModel MaterialByPassport { get { return _materialByPassport; } set { _materialByPassport = value; OnPropertyChanged("MaterialByPassport"); } }

		public MaterialViewModel Material { get { return _material; } set { _material = value; OnPropertyChanged("Material"); } }

		public MeasureUnitViewModel MeasureUnit { get { return _measureUnit; } set { _measureUnit = value; OnPropertyChanged("MeasureUnit"); } }

		public MassCalculationViewModel MassCalculation { get { return _massCalculation; } set { _massCalculation = value; OnPropertyChanged("MassCalculation"); } }

		public CalculationViewModel PlanCalculation { get { return _planCalculation; } set { _planCalculation = value; OnPropertyChanged("PlanCalculation"); } }

		public CalculationViewModel FactCalculation { get { return _factCalculation; } set { _factCalculation = value; OnPropertyChanged("FactCalculation"); } }

		public EquipmentViewModel Equipment { get { return _equipment; } set { _equipment = value; OnPropertyChanged("Equipment"); } }

		public MethodViewModel Method { get { return _method; } set { _method = value; OnPropertyChanged("Method"); } }

		public ImageViewModel DrawingImage { get { return _drawingImage; } set { _drawingImage = value; OnPropertyChanged("DrawingImage"); } }

		public FlowsheetViewModel Flowsheet { get { return _flowsheet; } set { _flowsheet = value; OnPropertyChanged("Flowsheet"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.CreationDate = CreationDate; 

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.AdditionalInfo = AdditionalInfo; 

			Entity.Code = Code; 

			Entity.MassWithShruff = MassWithShruff; 

			Entity.Price = Price; 

			Entity.ShavingPrice = ShavingPrice; 

			Entity.CalculationPriceManual = CalculationPriceManual; 

			Entity.Width = Width; 

			Entity.Length = Length; 

			Entity.Thickness = Thickness; 

			Entity.InnerDiameter = InnerDiameter; 

			Entity.OuterDiameter = OuterDiameter; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Group = Group == null ? null : Group.Entity; 

			Entity.Detail = Detail == null ? null : Detail.Entity; 

			Entity.MaterialByPassport = MaterialByPassport == null ? null : MaterialByPassport.Entity; 

			Entity.Material = Material == null ? null : Material.Entity; 

			Entity.MeasureUnit = MeasureUnit == null ? null : MeasureUnit.Entity; 

			Entity.MassCalculation = MassCalculation == null ? null : MassCalculation.Entity; 

			Entity.PlanCalculation = PlanCalculation == null ? null : PlanCalculation.Entity; 

			Entity.FactCalculation = FactCalculation == null ? null : FactCalculation.Entity; 

			Entity.Equipment = Equipment == null ? null : Equipment.Entity; 

			Entity.Method = Method == null ? null : Method.Entity; 

			Entity.DrawingImage = DrawingImage == null ? null : DrawingImage.Entity; 

			Entity.Flowsheet = Flowsheet == null ? null : Flowsheet.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			CreationDate = Entity.CreationDate; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			AdditionalInfo = Entity.AdditionalInfo; 

			Code = Entity.Code; 

			MassWithShruff = Entity.MassWithShruff; 

			Price = Entity.Price; 

			ShavingPrice = Entity.ShavingPrice; 

			CalculationPriceManual = Entity.CalculationPriceManual; 

			Width = Entity.Width; 

			Length = Entity.Length; 

			Thickness = Entity.Thickness; 

			InnerDiameter = Entity.InnerDiameter; 

			OuterDiameter = Entity.OuterDiameter; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

			Group = Entity.Group == null ? null : new GroupViewModel(Entity.Group, RepositoryFactory); 

			Detail = Entity.Detail == null ? null : new DetailViewModel(Entity.Detail, RepositoryFactory); 

			MaterialByPassport = Entity.MaterialByPassport == null ? null : new MaterialViewModel(Entity.MaterialByPassport, RepositoryFactory); 

			Material = Entity.Material == null ? null : new MaterialViewModel(Entity.Material, RepositoryFactory); 

			MeasureUnit = Entity.MeasureUnit == null ? null : new MeasureUnitViewModel(Entity.MeasureUnit, RepositoryFactory); 

			MassCalculation = Entity.MassCalculation == null ? null : new MassCalculationViewModel(Entity.MassCalculation, RepositoryFactory); 

			PlanCalculation = Entity.PlanCalculation == null ? null : new CalculationViewModel(Entity.PlanCalculation, RepositoryFactory); 

			FactCalculation = Entity.FactCalculation == null ? null : new CalculationViewModel(Entity.FactCalculation, RepositoryFactory); 

			Equipment = Entity.Equipment == null ? null : new EquipmentViewModel(Entity.Equipment, RepositoryFactory); 

			Method = Entity.Method == null ? null : new MethodViewModel(Entity.Method, RepositoryFactory); 

			DrawingImage = Entity.DrawingImage == null ? null : new ImageViewModel(Entity.DrawingImage, RepositoryFactory); 

			Flowsheet = Entity.Flowsheet == null ? null : new FlowsheetViewModel(Entity.Flowsheet, RepositoryFactory); 

		}

		public override void CopyTo(DrawingViewModel target)
		{

			target.CreationDate = CreationDate; 

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.AdditionalInfo = AdditionalInfo; 

			target.Code = Code; 

			target.MassWithShruff = MassWithShruff; 

			target.Price = Price; 

			target.ShavingPrice = ShavingPrice; 

			target.CalculationPriceManual = CalculationPriceManual; 

			target.Width = Width; 

			target.Length = Length; 

			target.Thickness = Thickness; 

			target.InnerDiameter = InnerDiameter; 

			target.OuterDiameter = OuterDiameter; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

			target.Group = Group; 

			target.Detail = Detail; 

			target.MaterialByPassport = MaterialByPassport; 

			target.Material = Material; 

			target.MeasureUnit = MeasureUnit; 

			target.MassCalculation = MassCalculation; 

			target.PlanCalculation = PlanCalculation; 

			target.FactCalculation = FactCalculation; 

			target.Equipment = Equipment; 

			target.Method = Method; 

			target.DrawingImage = DrawingImage; 

			target.Flowsheet = Flowsheet; 

		}

		public override DrawingViewModel Clone()
		{
			var copy = new DrawingViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DrawingViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((DrawingViewModel) obj);
        }
	}


	// The viewmodel for Driver
	public partial class DriverViewModel : EntityViewModel<Rti.Model.Domain.Driver, DriverViewModel>
	{
		// Конструктор для маппинга
		public DriverViewModel() { }

        public DriverViewModel(Rti.Model.Domain.Driver entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _carModel;

		private String _number;

		private String _name;

		private String _document;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String CarModel { get { return _carModel; } set { if (Equals(_carModel, value)) return; _carModel = value; OnPropertyChanged("CarModel"); } }

		public String Number { get { return _number; } set { if (Equals(_number, value)) return; _number = value; OnPropertyChanged("Number"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Document { get { return _document; } set { if (Equals(_document, value)) return; _document = value; OnPropertyChanged("Document"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.CarModel = CarModel; 

			Entity.Number = Number; 

			Entity.Name = Name; 

			Entity.Document = Document; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			CarModel = Entity.CarModel; 

			Number = Entity.Number; 

			Name = Entity.Name; 

			Document = Entity.Document; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(DriverViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.CarModel = CarModel; 

			target.Number = Number; 

			target.Name = Name; 

			target.Document = Document; 

			target.IsDeleted = IsDeleted; 

		}

		public override DriverViewModel Clone()
		{
			var copy = new DriverViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DriverViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((DriverViewModel) obj);
        }
	}


	// The viewmodel for Employee
	public partial class EmployeeViewModel : EntityViewModel<Rti.Model.Domain.Employee, EmployeeViewModel>
	{
		// Конструктор для маппинга
		public EmployeeViewModel() { }

        public EmployeeViewModel(Rti.Model.Domain.Employee entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _code;

		private String _fullName;

		private String _note;

		private Boolean _isDeleted;

		private JobViewModel _job;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Code { get { return _code; } set { if (Equals(_code, value)) return; _code = value; OnPropertyChanged("Code"); } }

		public String FullName { get { return _fullName; } set { if (Equals(_fullName, value)) return; _fullName = value; OnPropertyChanged("FullName"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public JobViewModel Job { get { return _job; } set { _job = value; OnPropertyChanged("Job"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Code = Code; 

			Entity.FullName = FullName; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Job = Job == null ? null : Job.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Code = Entity.Code; 

			FullName = Entity.FullName; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

			Job = Entity.Job == null ? null : new JobViewModel(Entity.Job, RepositoryFactory); 

		}

		public override void CopyTo(EmployeeViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Code = Code; 

			target.FullName = FullName; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

			target.Job = Job; 

		}

		public override EmployeeViewModel Clone()
		{
			var copy = new EmployeeViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(EmployeeViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((EmployeeViewModel) obj);
        }
	}


	// The viewmodel for Equipment
	public partial class EquipmentViewModel : EntityViewModel<Rti.Model.Domain.Equipment, EquipmentViewModel>
	{
		// Конструктор для маппинга
		public EquipmentViewModel() { }

        public EquipmentViewModel(Rti.Model.Domain.Equipment entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private Existance _existanceEnum;

		private Decimal _square;

		private Int32 _formCount;

		private Int32 _slotCount;

		private Int32 _output;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public Existance ExistanceEnum { get { return _existanceEnum; } set { if (Equals(_existanceEnum, value)) return; _existanceEnum = value; OnPropertyChanged("ExistanceEnum"); } }

		public Decimal Square { get { return _square; } set { if (Equals(_square, value)) return; _square = value; OnPropertyChanged("Square"); } }

		public Int32 FormCount { get { return _formCount; } set { if (Equals(_formCount, value)) return; _formCount = value; OnPropertyChanged("FormCount"); } }

		public Int32 SlotCount { get { return _slotCount; } set { if (Equals(_slotCount, value)) return; _slotCount = value; OnPropertyChanged("SlotCount"); } }

		public Int32 Output { get { return _output; } set { if (Equals(_output, value)) return; _output = value; OnPropertyChanged("Output"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.ExistanceEnum = ExistanceEnum; 

			Entity.Square = Square; 

			Entity.FormCount = FormCount; 

			Entity.SlotCount = SlotCount; 

			Entity.Output = Output; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			ExistanceEnum = Entity.ExistanceEnum; 

			Square = Entity.Square; 

			FormCount = Entity.FormCount; 

			SlotCount = Entity.SlotCount; 

			Output = Entity.Output; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(EquipmentViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.ExistanceEnum = ExistanceEnum; 

			target.Square = Square; 

			target.FormCount = FormCount; 

			target.SlotCount = SlotCount; 

			target.Output = Output; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override EquipmentViewModel Clone()
		{
			var copy = new EquipmentViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(EquipmentViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((EquipmentViewModel) obj);
        }
	}


	// The viewmodel for Flowsheet
	public partial class FlowsheetViewModel : EntityViewModel<Rti.Model.Domain.Flowsheet, FlowsheetViewModel>
	{
		// Конструктор для маппинга
		public FlowsheetViewModel() { }

        public FlowsheetViewModel(Rti.Model.Domain.Flowsheet entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Decimal? _blankMass;

		private Decimal? _factMass;

		private String _note;

		private DrawingViewModel _drawing;

		private ContragentViewModel _customer;

		private ContragentViewModel _secondaryCustomer;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Decimal? BlankMass { get { return _blankMass; } set { if (Equals(_blankMass, value)) return; _blankMass = value; OnPropertyChanged("BlankMass"); } }

		public Decimal? FactMass { get { return _factMass; } set { if (Equals(_factMass, value)) return; _factMass = value; OnPropertyChanged("FactMass"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }

		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged("Customer"); } }

		public ContragentViewModel SecondaryCustomer { get { return _secondaryCustomer; } set { _secondaryCustomer = value; OnPropertyChanged("SecondaryCustomer"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.BlankMass = BlankMass; 

			Entity.FactMass = FactMass; 

			Entity.Note = Note; 

			Entity.Customer = Customer == null ? null : Customer.Entity; 

			Entity.SecondaryCustomer = SecondaryCustomer == null ? null : SecondaryCustomer.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			BlankMass = Entity.BlankMass; 

			FactMass = Entity.FactMass; 

			Note = Entity.Note; 

			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 

			SecondaryCustomer = Entity.SecondaryCustomer == null ? null : new ContragentViewModel(Entity.SecondaryCustomer, RepositoryFactory); 

		}

		public override void CopyTo(FlowsheetViewModel target)
		{

			target.BlankMass = BlankMass; 

			target.FactMass = FactMass; 

			target.Note = Note; 

			target.Drawing = Drawing; 

			target.Customer = Customer; 

			target.SecondaryCustomer = SecondaryCustomer; 

		}

		public override FlowsheetViewModel Clone()
		{
			var copy = new FlowsheetViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(FlowsheetViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((FlowsheetViewModel) obj);
        }
	}


	// The viewmodel for FlowsheetMachine
	public partial class FlowsheetMachineViewModel : EntityViewModel<Rti.Model.Domain.FlowsheetMachine, FlowsheetMachineViewModel>
	{
		// Конструктор для маппинга
		public FlowsheetMachineViewModel() { }

        public FlowsheetMachineViewModel(Rti.Model.Domain.FlowsheetMachine entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private Decimal? _plateTemperature;

		private Decimal? _cureTime;

		private FlowsheetViewModel _flowsheet;

		private MachineViewModel _machine;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public Decimal? PlateTemperature { get { return _plateTemperature; } set { if (Equals(_plateTemperature, value)) return; _plateTemperature = value; OnPropertyChanged("PlateTemperature"); } }

		public Decimal? CureTime { get { return _cureTime; } set { if (Equals(_cureTime, value)) return; _cureTime = value; OnPropertyChanged("CureTime"); } }

		public FlowsheetViewModel Flowsheet { get { return _flowsheet; } set { _flowsheet = value; OnPropertyChanged("Flowsheet"); } }

		public MachineViewModel Machine { get { return _machine; } set { _machine = value; OnPropertyChanged("Machine"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.PlateTemperature = PlateTemperature; 

			Entity.CureTime = CureTime; 

			Entity.Flowsheet = Flowsheet == null ? null : Flowsheet.Entity; 

			Entity.Machine = Machine == null ? null : Machine.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			PlateTemperature = Entity.PlateTemperature; 

			CureTime = Entity.CureTime; 

			Flowsheet = Entity.Flowsheet == null ? null : new FlowsheetViewModel(Entity.Flowsheet, RepositoryFactory); 

			Machine = Entity.Machine == null ? null : new MachineViewModel(Entity.Machine, RepositoryFactory); 

		}

		public override void CopyTo(FlowsheetMachineViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.PlateTemperature = PlateTemperature; 

			target.CureTime = CureTime; 

			target.Flowsheet = Flowsheet; 

			target.Machine = Machine; 

		}

		public override FlowsheetMachineViewModel Clone()
		{
			var copy = new FlowsheetMachineViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(FlowsheetMachineViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((FlowsheetMachineViewModel) obj);
        }
	}


	// The viewmodel for FlowsheetProcess
	public partial class FlowsheetProcessViewModel : EntityViewModel<Rti.Model.Domain.FlowsheetProcess, FlowsheetProcessViewModel>
	{
		// Конструктор для маппинга
		public FlowsheetProcessViewModel() { }

        public FlowsheetProcessViewModel(Rti.Model.Domain.FlowsheetProcess entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32? _sortOrder;

		private String _name;

		private String _operation;

		private String _executor;

		private String _varName;

		private Decimal _normTime;

		private String _note;

		private FlowsheetViewModel _flowsheet;

		private ProcessViewModel _process;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32? SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Operation { get { return _operation; } set { if (Equals(_operation, value)) return; _operation = value; OnPropertyChanged("Operation"); } }

		public String Executor { get { return _executor; } set { if (Equals(_executor, value)) return; _executor = value; OnPropertyChanged("Executor"); } }

		public String VarName { get { return _varName; } set { if (Equals(_varName, value)) return; _varName = value; OnPropertyChanged("VarName"); } }

		public Decimal NormTime { get { return _normTime; } set { if (Equals(_normTime, value)) return; _normTime = value; OnPropertyChanged("NormTime"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public FlowsheetViewModel Flowsheet { get { return _flowsheet; } set { _flowsheet = value; OnPropertyChanged("Flowsheet"); } }

		public ProcessViewModel Process { get { return _process; } set { _process = value; OnPropertyChanged("Process"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Operation = Operation; 

			Entity.Executor = Executor; 

			Entity.VarName = VarName; 

			Entity.NormTime = NormTime; 

			Entity.Note = Note; 

			Entity.Flowsheet = Flowsheet == null ? null : Flowsheet.Entity; 

			Entity.Process = Process == null ? null : Process.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Operation = Entity.Operation; 

			Executor = Entity.Executor; 

			VarName = Entity.VarName; 

			NormTime = Entity.NormTime; 

			Note = Entity.Note; 

			Flowsheet = Entity.Flowsheet == null ? null : new FlowsheetViewModel(Entity.Flowsheet, RepositoryFactory); 

			Process = Entity.Process == null ? null : new ProcessViewModel(Entity.Process, RepositoryFactory); 

		}

		public override void CopyTo(FlowsheetProcessViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Operation = Operation; 

			target.Executor = Executor; 

			target.VarName = VarName; 

			target.NormTime = NormTime; 

			target.Note = Note; 

			target.Flowsheet = Flowsheet; 

			target.Process = Process; 

		}

		public override FlowsheetProcessViewModel Clone()
		{
			var copy = new FlowsheetProcessViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(FlowsheetProcessViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((FlowsheetProcessViewModel) obj);
        }
	}


	// The viewmodel for Group
	public partial class GroupViewModel : EntityViewModel<Rti.Model.Domain.Group, GroupViewModel>
	{
		// Конструктор для маппинга
		public GroupViewModel() { }

        public GroupViewModel(Rti.Model.Domain.Group entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(GroupViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override GroupViewModel Clone()
		{
			var copy = new GroupViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(GroupViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((GroupViewModel) obj);
        }
	}


	// The viewmodel for Image
	public partial class ImageViewModel : EntityViewModel<Rti.Model.Domain.Image, ImageViewModel>
	{
		// Конструктор для маппинга
		public ImageViewModel() { }

        public ImageViewModel(Rti.Model.Domain.Image entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Byte[] _data;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Byte[] Data { get { return _data; } set { if (Equals(_data, value)) return; _data = value; OnPropertyChanged("Data"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.Data = Data; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			Data = Entity.Data; 

		}

		public override void CopyTo(ImageViewModel target)
		{

			target.Data = Data; 

		}

		public override ImageViewModel Clone()
		{
			var copy = new ImageViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ImageViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ImageViewModel) obj);
        }
	}


	// The viewmodel for Invoice
	public partial class InvoiceViewModel : EntityViewModel<Rti.Model.Domain.Invoice, InvoiceViewModel>
	{
		// Конструктор для маппинга
		public InvoiceViewModel() { }

        public InvoiceViewModel(Rti.Model.Domain.Invoice entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Boolean _isDeleted;

		private String _invoiceNumber;

		private DateTime _invoiceDate;

		private RequestViewModel _request;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public String InvoiceNumber { get { return _invoiceNumber; } set { if (Equals(_invoiceNumber, value)) return; _invoiceNumber = value; OnPropertyChanged("InvoiceNumber"); } }

		public DateTime InvoiceDate { get { return _invoiceDate; } set { if (Equals(_invoiceDate, value)) return; _invoiceDate = value; OnPropertyChanged("InvoiceDate"); } }

		public RequestViewModel Request { get { return _request; } set { _request = value; OnPropertyChanged("Request"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.IsDeleted = IsDeleted; 

			Entity.InvoiceNumber = InvoiceNumber; 

			Entity.InvoiceDate = InvoiceDate; 

			Entity.Request = Request == null ? null : Request.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			IsDeleted = Entity.IsDeleted; 

			InvoiceNumber = Entity.InvoiceNumber; 

			InvoiceDate = Entity.InvoiceDate; 

			Request = Entity.Request == null ? null : new RequestViewModel(Entity.Request, RepositoryFactory); 

		}

		public override void CopyTo(InvoiceViewModel target)
		{

			target.IsDeleted = IsDeleted; 

			target.InvoiceNumber = InvoiceNumber; 

			target.InvoiceDate = InvoiceDate; 

			target.Request = Request; 

		}

		public override InvoiceViewModel Clone()
		{
			var copy = new InvoiceViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(InvoiceViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((InvoiceViewModel) obj);
        }
	}


	// The viewmodel for Job
	public partial class JobViewModel : EntityViewModel<Rti.Model.Domain.Job, JobViewModel>
	{
		// Конструктор для маппинга
		public JobViewModel() { }

        public JobViewModel(Rti.Model.Domain.Job entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _login;

		private String _password;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Login { get { return _login; } set { if (Equals(_login, value)) return; _login = value; OnPropertyChanged("Login"); } }

		public String Password { get { return _password; } set { if (Equals(_password, value)) return; _password = value; OnPropertyChanged("Password"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Login = Login; 

			Entity.Password = Password; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Login = Entity.Login; 

			Password = Entity.Password; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(JobViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Login = Login; 

			target.Password = Password; 

			target.IsDeleted = IsDeleted; 

		}

		public override JobViewModel Clone()
		{
			var copy = new JobViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(JobViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((JobViewModel) obj);
        }
	}


	// The viewmodel for Machine
	public partial class MachineViewModel : EntityViewModel<Rti.Model.Domain.Machine, MachineViewModel>
	{
		// Конструктор для маппинга
		public MachineViewModel() { }

        public MachineViewModel(Rti.Model.Domain.Machine entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _plateSize;

		private String _invNumber;

		private Int32? _plateCount;

		private Decimal? _platePower;

		private Decimal? _enginePower;

		private Decimal? _totalPower;

		private Decimal? _powerPrice;

		private Decimal? _timePrice;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String PlateSize { get { return _plateSize; } set { if (Equals(_plateSize, value)) return; _plateSize = value; OnPropertyChanged("PlateSize"); } }

		public String InvNumber { get { return _invNumber; } set { if (Equals(_invNumber, value)) return; _invNumber = value; OnPropertyChanged("InvNumber"); } }

		public Int32? PlateCount { get { return _plateCount; } set { if (Equals(_plateCount, value)) return; _plateCount = value; OnPropertyChanged("PlateCount"); } }

		public Decimal? PlatePower { get { return _platePower; } set { if (Equals(_platePower, value)) return; _platePower = value; OnPropertyChanged("PlatePower"); } }

		public Decimal? EnginePower { get { return _enginePower; } set { if (Equals(_enginePower, value)) return; _enginePower = value; OnPropertyChanged("EnginePower"); } }

		public Decimal? TotalPower { get { return _totalPower; } set { if (Equals(_totalPower, value)) return; _totalPower = value; OnPropertyChanged("TotalPower"); } }

		public Decimal? PowerPrice { get { return _powerPrice; } set { if (Equals(_powerPrice, value)) return; _powerPrice = value; OnPropertyChanged("PowerPrice"); } }

		public Decimal? TimePrice { get { return _timePrice; } set { if (Equals(_timePrice, value)) return; _timePrice = value; OnPropertyChanged("TimePrice"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.PlateSize = PlateSize; 

			Entity.InvNumber = InvNumber; 

			Entity.PlateCount = PlateCount; 

			Entity.PlatePower = PlatePower; 

			Entity.EnginePower = EnginePower; 

			Entity.TotalPower = TotalPower; 

			Entity.PowerPrice = PowerPrice; 

			Entity.TimePrice = TimePrice; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			PlateSize = Entity.PlateSize; 

			InvNumber = Entity.InvNumber; 

			PlateCount = Entity.PlateCount; 

			PlatePower = Entity.PlatePower; 

			EnginePower = Entity.EnginePower; 

			TotalPower = Entity.TotalPower; 

			PowerPrice = Entity.PowerPrice; 

			TimePrice = Entity.TimePrice; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(MachineViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.PlateSize = PlateSize; 

			target.InvNumber = InvNumber; 

			target.PlateCount = PlateCount; 

			target.PlatePower = PlatePower; 

			target.EnginePower = EnginePower; 

			target.TotalPower = TotalPower; 

			target.PowerPrice = PowerPrice; 

			target.TimePrice = TimePrice; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override MachineViewModel Clone()
		{
			var copy = new MachineViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(MachineViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MachineViewModel) obj);
        }
	}


	// The viewmodel for MassCalculation
	public partial class MassCalculationViewModel : EntityViewModel<Rti.Model.Domain.MassCalculation, MassCalculationViewModel>
	{
		// Конструктор для маппинга
		public MassCalculationViewModel() { }

        public MassCalculationViewModel(Rti.Model.Domain.MassCalculation entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private DetailType _detailTypeEnum;

		private Decimal? _materialDensity;

		private Decimal? _rndDShn;

		private Decimal? _rndS1;

		private Decimal? _rndS2;

		private Decimal? _rndDNar;

		private Decimal? _rndDVn;

		private Decimal? _rndDSr;

		private Decimal? _rndMRas;

		private Decimal? _sqS;

		private Decimal? _sqL;

		private Decimal? _sqB;

		private Decimal? _sqL1;

		private Decimal? _sqB1;

		private Decimal? _sqDVn;

		private Decimal? _vlS;

		private Decimal? _vlL;

		private Decimal? _vlB;

		private Decimal? _vlL1;

		private Decimal? _vlB1;

		private String _massFormula;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public DetailType DetailTypeEnum { get { return _detailTypeEnum; } set { if (Equals(_detailTypeEnum, value)) return; _detailTypeEnum = value; OnPropertyChanged("DetailTypeEnum"); } }

		public Decimal? MaterialDensity { get { return _materialDensity; } set { if (Equals(_materialDensity, value)) return; _materialDensity = value; OnPropertyChanged("MaterialDensity"); } }

		public Decimal? RndDShn { get { return _rndDShn; } set { if (Equals(_rndDShn, value)) return; _rndDShn = value; OnPropertyChanged("RndDShn"); } }

		public Decimal? RndS1 { get { return _rndS1; } set { if (Equals(_rndS1, value)) return; _rndS1 = value; OnPropertyChanged("RndS1"); } }

		public Decimal? RndS2 { get { return _rndS2; } set { if (Equals(_rndS2, value)) return; _rndS2 = value; OnPropertyChanged("RndS2"); } }

		public Decimal? RndDNar { get { return _rndDNar; } set { if (Equals(_rndDNar, value)) return; _rndDNar = value; OnPropertyChanged("RndDNar"); } }

		public Decimal? RndDVn { get { return _rndDVn; } set { if (Equals(_rndDVn, value)) return; _rndDVn = value; OnPropertyChanged("RndDVn"); } }

		public Decimal? RndDSr { get { return _rndDSr; } set { if (Equals(_rndDSr, value)) return; _rndDSr = value; OnPropertyChanged("RndDSr"); } }

		public Decimal? RndMRas { get { return _rndMRas; } set { if (Equals(_rndMRas, value)) return; _rndMRas = value; OnPropertyChanged("RndMRas"); } }

		public Decimal? SqS { get { return _sqS; } set { if (Equals(_sqS, value)) return; _sqS = value; OnPropertyChanged("SqS"); } }

		public Decimal? SqL { get { return _sqL; } set { if (Equals(_sqL, value)) return; _sqL = value; OnPropertyChanged("SqL"); } }

		public Decimal? SqB { get { return _sqB; } set { if (Equals(_sqB, value)) return; _sqB = value; OnPropertyChanged("SqB"); } }

		public Decimal? SqL1 { get { return _sqL1; } set { if (Equals(_sqL1, value)) return; _sqL1 = value; OnPropertyChanged("SqL1"); } }

		public Decimal? SqB1 { get { return _sqB1; } set { if (Equals(_sqB1, value)) return; _sqB1 = value; OnPropertyChanged("SqB1"); } }

		public Decimal? SqDVn { get { return _sqDVn; } set { if (Equals(_sqDVn, value)) return; _sqDVn = value; OnPropertyChanged("SqDVn"); } }

		public Decimal? VlS { get { return _vlS; } set { if (Equals(_vlS, value)) return; _vlS = value; OnPropertyChanged("VlS"); } }

		public Decimal? VlL { get { return _vlL; } set { if (Equals(_vlL, value)) return; _vlL = value; OnPropertyChanged("VlL"); } }

		public Decimal? VlB { get { return _vlB; } set { if (Equals(_vlB, value)) return; _vlB = value; OnPropertyChanged("VlB"); } }

		public Decimal? VlL1 { get { return _vlL1; } set { if (Equals(_vlL1, value)) return; _vlL1 = value; OnPropertyChanged("VlL1"); } }

		public Decimal? VlB1 { get { return _vlB1; } set { if (Equals(_vlB1, value)) return; _vlB1 = value; OnPropertyChanged("VlB1"); } }

		public String MassFormula { get { return _massFormula; } set { if (Equals(_massFormula, value)) return; _massFormula = value; OnPropertyChanged("MassFormula"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.DetailTypeEnum = DetailTypeEnum; 

			Entity.MaterialDensity = MaterialDensity; 

			Entity.RndDShn = RndDShn; 

			Entity.RndS1 = RndS1; 

			Entity.RndS2 = RndS2; 

			Entity.RndDNar = RndDNar; 

			Entity.RndDVn = RndDVn; 

			Entity.RndDSr = RndDSr; 

			Entity.RndMRas = RndMRas; 

			Entity.SqS = SqS; 

			Entity.SqL = SqL; 

			Entity.SqB = SqB; 

			Entity.SqL1 = SqL1; 

			Entity.SqB1 = SqB1; 

			Entity.SqDVn = SqDVn; 

			Entity.VlS = VlS; 

			Entity.VlL = VlL; 

			Entity.VlB = VlB; 

			Entity.VlL1 = VlL1; 

			Entity.VlB1 = VlB1; 

			Entity.MassFormula = MassFormula; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			DetailTypeEnum = Entity.DetailTypeEnum; 

			MaterialDensity = Entity.MaterialDensity; 

			RndDShn = Entity.RndDShn; 

			RndS1 = Entity.RndS1; 

			RndS2 = Entity.RndS2; 

			RndDNar = Entity.RndDNar; 

			RndDVn = Entity.RndDVn; 

			RndDSr = Entity.RndDSr; 

			RndMRas = Entity.RndMRas; 

			SqS = Entity.SqS; 

			SqL = Entity.SqL; 

			SqB = Entity.SqB; 

			SqL1 = Entity.SqL1; 

			SqB1 = Entity.SqB1; 

			SqDVn = Entity.SqDVn; 

			VlS = Entity.VlS; 

			VlL = Entity.VlL; 

			VlB = Entity.VlB; 

			VlL1 = Entity.VlL1; 

			VlB1 = Entity.VlB1; 

			MassFormula = Entity.MassFormula; 

		}

		public override void CopyTo(MassCalculationViewModel target)
		{

			target.DetailTypeEnum = DetailTypeEnum; 

			target.MaterialDensity = MaterialDensity; 

			target.RndDShn = RndDShn; 

			target.RndS1 = RndS1; 

			target.RndS2 = RndS2; 

			target.RndDNar = RndDNar; 

			target.RndDVn = RndDVn; 

			target.RndDSr = RndDSr; 

			target.RndMRas = RndMRas; 

			target.SqS = SqS; 

			target.SqL = SqL; 

			target.SqB = SqB; 

			target.SqL1 = SqL1; 

			target.SqB1 = SqB1; 

			target.SqDVn = SqDVn; 

			target.VlS = VlS; 

			target.VlL = VlL; 

			target.VlB = VlB; 

			target.VlL1 = VlL1; 

			target.VlB1 = VlB1; 

			target.MassFormula = MassFormula; 

		}

		public override MassCalculationViewModel Clone()
		{
			var copy = new MassCalculationViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(MassCalculationViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MassCalculationViewModel) obj);
        }
	}


	// The viewmodel for Material
	public partial class MaterialViewModel : EntityViewModel<Rti.Model.Domain.Material, MaterialViewModel>
	{
		// Конструктор для маппинга
		public MaterialViewModel() { }

        public MaterialViewModel(Rti.Model.Domain.Material entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _techConditions;

		private Decimal? _density;

		private Decimal? _thickness;

		private Decimal? _length;

		private Decimal? _width;

		private Decimal? _price;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String TechConditions { get { return _techConditions; } set { if (Equals(_techConditions, value)) return; _techConditions = value; OnPropertyChanged("TechConditions"); } }

		public Decimal? Density { get { return _density; } set { if (Equals(_density, value)) return; _density = value; OnPropertyChanged("Density"); } }

		public Decimal? Thickness { get { return _thickness; } set { if (Equals(_thickness, value)) return; _thickness = value; OnPropertyChanged("Thickness"); } }

		public Decimal? Length { get { return _length; } set { if (Equals(_length, value)) return; _length = value; OnPropertyChanged("Length"); } }

		public Decimal? Width { get { return _width; } set { if (Equals(_width, value)) return; _width = value; OnPropertyChanged("Width"); } }

		public Decimal? Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.TechConditions = TechConditions; 

			Entity.Density = Density; 

			Entity.Thickness = Thickness; 

			Entity.Length = Length; 

			Entity.Width = Width; 

			Entity.Price = Price; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			TechConditions = Entity.TechConditions; 

			Density = Entity.Density; 

			Thickness = Entity.Thickness; 

			Length = Entity.Length; 

			Width = Entity.Width; 

			Price = Entity.Price; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(MaterialViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.TechConditions = TechConditions; 

			target.Density = Density; 

			target.Thickness = Thickness; 

			target.Length = Length; 

			target.Width = Width; 

			target.Price = Price; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override MaterialViewModel Clone()
		{
			var copy = new MaterialViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(MaterialViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MaterialViewModel) obj);
        }
	}


	// The viewmodel for MaterialArrivalRecord
	public partial class MaterialArrivalRecordViewModel : EntityViewModel<Rti.Model.Domain.MaterialArrivalRecord, MaterialArrivalRecordViewModel>
	{
		// Конструктор для маппинга
		public MaterialArrivalRecordViewModel() { }

        public MaterialArrivalRecordViewModel(Rti.Model.Domain.MaterialArrivalRecord entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _invoiceNumber;

		private Decimal _invoiceSum;

		private DateTime _waybillDate;

		private String _waybillNumber;

		private Decimal _price;

		private Decimal _count;

		private Decimal? _forwardedCount;

		private Boolean _isDeleted;

		private ContragentViewModel _supplier;

		private MaterialViewModel _material;

		private MeasureUnitViewModel _measureUnit;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String InvoiceNumber { get { return _invoiceNumber; } set { if (Equals(_invoiceNumber, value)) return; _invoiceNumber = value; OnPropertyChanged("InvoiceNumber"); } }

		public Decimal InvoiceSum { get { return _invoiceSum; } set { if (Equals(_invoiceSum, value)) return; _invoiceSum = value; OnPropertyChanged("InvoiceSum"); } }

		public DateTime WaybillDate { get { return _waybillDate; } set { if (Equals(_waybillDate, value)) return; _waybillDate = value; OnPropertyChanged("WaybillDate"); } }

		public String WaybillNumber { get { return _waybillNumber; } set { if (Equals(_waybillNumber, value)) return; _waybillNumber = value; OnPropertyChanged("WaybillNumber"); } }

		public Decimal Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }

		public Decimal Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }

		public Decimal? ForwardedCount { get { return _forwardedCount; } set { if (Equals(_forwardedCount, value)) return; _forwardedCount = value; OnPropertyChanged("ForwardedCount"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public ContragentViewModel Supplier { get { return _supplier; } set { _supplier = value; OnPropertyChanged("Supplier"); } }

		public MaterialViewModel Material { get { return _material; } set { _material = value; OnPropertyChanged("Material"); } }

		public MeasureUnitViewModel MeasureUnit { get { return _measureUnit; } set { _measureUnit = value; OnPropertyChanged("MeasureUnit"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.InvoiceNumber = InvoiceNumber; 

			Entity.InvoiceSum = InvoiceSum; 

			Entity.WaybillDate = WaybillDate; 

			Entity.WaybillNumber = WaybillNumber; 

			Entity.Price = Price; 

			Entity.Count = Count; 

			Entity.ForwardedCount = ForwardedCount; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Supplier = Supplier == null ? null : Supplier.Entity; 

			Entity.Material = Material == null ? null : Material.Entity; 

			Entity.MeasureUnit = MeasureUnit == null ? null : MeasureUnit.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			InvoiceNumber = Entity.InvoiceNumber; 

			InvoiceSum = Entity.InvoiceSum; 

			WaybillDate = Entity.WaybillDate; 

			WaybillNumber = Entity.WaybillNumber; 

			Price = Entity.Price; 

			Count = Entity.Count; 

			ForwardedCount = Entity.ForwardedCount; 

			IsDeleted = Entity.IsDeleted; 

			Supplier = Entity.Supplier == null ? null : new ContragentViewModel(Entity.Supplier, RepositoryFactory); 

			Material = Entity.Material == null ? null : new MaterialViewModel(Entity.Material, RepositoryFactory); 

			MeasureUnit = Entity.MeasureUnit == null ? null : new MeasureUnitViewModel(Entity.MeasureUnit, RepositoryFactory); 

		}

		public override void CopyTo(MaterialArrivalRecordViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.InvoiceNumber = InvoiceNumber; 

			target.InvoiceSum = InvoiceSum; 

			target.WaybillDate = WaybillDate; 

			target.WaybillNumber = WaybillNumber; 

			target.Price = Price; 

			target.Count = Count; 

			target.ForwardedCount = ForwardedCount; 

			target.IsDeleted = IsDeleted; 

			target.Supplier = Supplier; 

			target.Material = Material; 

			target.MeasureUnit = MeasureUnit; 

		}

		public override MaterialArrivalRecordViewModel Clone()
		{
			var copy = new MaterialArrivalRecordViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(MaterialArrivalRecordViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MaterialArrivalRecordViewModel) obj);
        }
	}


	// The viewmodel for MeasureUnit
	public partial class MeasureUnitViewModel : EntityViewModel<Rti.Model.Domain.MeasureUnit, MeasureUnitViewModel>
	{
		// Конструктор для маппинга
		public MeasureUnitViewModel() { }

        public MeasureUnitViewModel(Rti.Model.Domain.MeasureUnit entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _code;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Code { get { return _code; } set { if (Equals(_code, value)) return; _code = value; OnPropertyChanged("Code"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Code = Code; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Code = Entity.Code; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(MeasureUnitViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Code = Code; 

			target.IsDeleted = IsDeleted; 

		}

		public override MeasureUnitViewModel Clone()
		{
			var copy = new MeasureUnitViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(MeasureUnitViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MeasureUnitViewModel) obj);
        }
	}


	// The viewmodel for Method
	public partial class MethodViewModel : EntityViewModel<Rti.Model.Domain.Method, MethodViewModel>
	{
		// Конструктор для маппинга
		public MethodViewModel() { }

        public MethodViewModel(Rti.Model.Domain.Method entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _name;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

		}

		public override void CopyTo(MethodViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

		}

		public override MethodViewModel Clone()
		{
			var copy = new MethodViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(MethodViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MethodViewModel) obj);
        }
	}


	// The viewmodel for Process
	public partial class ProcessViewModel : EntityViewModel<Rti.Model.Domain.Process, ProcessViewModel>
	{
		// Конструктор для маппинга
		public ProcessViewModel() { }

        public ProcessViewModel(Rti.Model.Domain.Process entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private ProcessType _processTypeEnum;

		private String _name;

		private String _defaultOperation;

		private String _defaultExecutor;

		private String _variableName;

		private Decimal? _defaultNormTime;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public ProcessType ProcessTypeEnum { get { return _processTypeEnum; } set { if (Equals(_processTypeEnum, value)) return; _processTypeEnum = value; OnPropertyChanged("ProcessTypeEnum"); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }

		public String DefaultOperation { get { return _defaultOperation; } set { if (Equals(_defaultOperation, value)) return; _defaultOperation = value; OnPropertyChanged("DefaultOperation"); } }

		public String DefaultExecutor { get { return _defaultExecutor; } set { if (Equals(_defaultExecutor, value)) return; _defaultExecutor = value; OnPropertyChanged("DefaultExecutor"); } }

		public String VariableName { get { return _variableName; } set { if (Equals(_variableName, value)) return; _variableName = value; OnPropertyChanged("VariableName"); } }

		public Decimal? DefaultNormTime { get { return _defaultNormTime; } set { if (Equals(_defaultNormTime, value)) return; _defaultNormTime = value; OnPropertyChanged("DefaultNormTime"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.ProcessTypeEnum = ProcessTypeEnum; 

			Entity.Name = Name; 

			Entity.DefaultOperation = DefaultOperation; 

			Entity.DefaultExecutor = DefaultExecutor; 

			Entity.VariableName = VariableName; 

			Entity.DefaultNormTime = DefaultNormTime; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			ProcessTypeEnum = Entity.ProcessTypeEnum; 

			Name = Entity.Name; 

			DefaultOperation = Entity.DefaultOperation; 

			DefaultExecutor = Entity.DefaultExecutor; 

			VariableName = Entity.VariableName; 

			DefaultNormTime = Entity.DefaultNormTime; 

		}

		public override void CopyTo(ProcessViewModel target)
		{

			target.ProcessTypeEnum = ProcessTypeEnum; 

			target.Name = Name; 

			target.DefaultOperation = DefaultOperation; 

			target.DefaultExecutor = DefaultExecutor; 

			target.VariableName = VariableName; 

			target.DefaultNormTime = DefaultNormTime; 

		}

		public override ProcessViewModel Clone()
		{
			var copy = new ProcessViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ProcessViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ProcessViewModel) obj);
        }
	}


	// The viewmodel for Request
	public partial class RequestViewModel : EntityViewModel<Rti.Model.Domain.Request, RequestViewModel>
	{
		// Конструктор для маппинга
		public RequestViewModel() { }

        public RequestViewModel(Rti.Model.Domain.Request entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _number;

		private DateTime _regDate;

		private DateTime? _shipDate;

		private Int32? _leadTime;

		private Boolean _isDeleted;

		private ContragentViewModel _customer;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 Number { get { return _number; } set { if (Equals(_number, value)) return; _number = value; OnPropertyChanged("Number"); } }

		public DateTime RegDate { get { return _regDate; } set { if (Equals(_regDate, value)) return; _regDate = value; OnPropertyChanged("RegDate"); } }

		public DateTime? ShipDate { get { return _shipDate; } set { if (Equals(_shipDate, value)) return; _shipDate = value; OnPropertyChanged("ShipDate"); } }

		public Int32? LeadTime { get { return _leadTime; } set { if (Equals(_leadTime, value)) return; _leadTime = value; OnPropertyChanged("LeadTime"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged("Customer"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.Number = Number; 

			Entity.RegDate = RegDate; 

			Entity.ShipDate = ShipDate; 

			Entity.LeadTime = LeadTime; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Customer = Customer == null ? null : Customer.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			Number = Entity.Number; 

			RegDate = Entity.RegDate; 

			ShipDate = Entity.ShipDate; 

			LeadTime = Entity.LeadTime; 

			IsDeleted = Entity.IsDeleted; 

			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 

		}

		public override void CopyTo(RequestViewModel target)
		{

			target.Number = Number; 

			target.RegDate = RegDate; 

			target.ShipDate = ShipDate; 

			target.LeadTime = LeadTime; 

			target.IsDeleted = IsDeleted; 

			target.Customer = Customer; 

		}

		public override RequestViewModel Clone()
		{
			var copy = new RequestViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(RequestViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((RequestViewModel) obj);
        }
	}


	// The viewmodel for RequestDetail
	public partial class RequestDetailViewModel : EntityViewModel<Rti.Model.Domain.RequestDetail, RequestDetailViewModel>
	{
		// Конструктор для маппинга
		public RequestDetailViewModel() { }

        public RequestDetailViewModel(Rti.Model.Domain.RequestDetail entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private Int32? _equipmentExistance;

		private String _additionalInfo;

		private Int32? _equipmentLeadTime;

		private Decimal _count;

		private Decimal _price;

		private Decimal? _calculationPrice;

		private Decimal _sum;

		private String _note;

		private Boolean _isDeleted;

		private RequestViewModel _request;

		private DrawingViewModel _drawing;

		private GroupViewModel _group;

		private DetailViewModel _detail;

		private MaterialViewModel _material;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public Int32? EquipmentExistance { get { return _equipmentExistance; } set { if (Equals(_equipmentExistance, value)) return; _equipmentExistance = value; OnPropertyChanged("EquipmentExistance"); } }

		public String AdditionalInfo { get { return _additionalInfo; } set { if (Equals(_additionalInfo, value)) return; _additionalInfo = value; OnPropertyChanged("AdditionalInfo"); } }

		public Int32? EquipmentLeadTime { get { return _equipmentLeadTime; } set { if (Equals(_equipmentLeadTime, value)) return; _equipmentLeadTime = value; OnPropertyChanged("EquipmentLeadTime"); } }

		public Decimal Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }

		public Decimal Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }

		public Decimal? CalculationPrice { get { return _calculationPrice; } set { if (Equals(_calculationPrice, value)) return; _calculationPrice = value; OnPropertyChanged("CalculationPrice"); } }

		public Decimal Sum { get { return _sum; } set { if (Equals(_sum, value)) return; _sum = value; OnPropertyChanged("Sum"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public RequestViewModel Request { get { return _request; } set { _request = value; OnPropertyChanged("Request"); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }

		public GroupViewModel Group { get { return _group; } set { _group = value; OnPropertyChanged("Group"); } }

		public DetailViewModel Detail { get { return _detail; } set { _detail = value; OnPropertyChanged("Detail"); } }

		public MaterialViewModel Material { get { return _material; } set { _material = value; OnPropertyChanged("Material"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.EquipmentExistance = EquipmentExistance; 

			Entity.AdditionalInfo = AdditionalInfo; 

			Entity.EquipmentLeadTime = EquipmentLeadTime; 

			Entity.Count = Count; 

			Entity.Price = Price; 

			Entity.CalculationPrice = CalculationPrice; 

			Entity.Sum = Sum; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Request = Request == null ? null : Request.Entity; 

			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 

			Entity.Group = Group == null ? null : Group.Entity; 

			Entity.Detail = Detail == null ? null : Detail.Entity; 

			Entity.Material = Material == null ? null : Material.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			EquipmentExistance = Entity.EquipmentExistance; 

			AdditionalInfo = Entity.AdditionalInfo; 

			EquipmentLeadTime = Entity.EquipmentLeadTime; 

			Count = Entity.Count; 

			Price = Entity.Price; 

			CalculationPrice = Entity.CalculationPrice; 

			Sum = Entity.Sum; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

			Request = Entity.Request == null ? null : new RequestViewModel(Entity.Request, RepositoryFactory); 

			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 

			Group = Entity.Group == null ? null : new GroupViewModel(Entity.Group, RepositoryFactory); 

			Detail = Entity.Detail == null ? null : new DetailViewModel(Entity.Detail, RepositoryFactory); 

			Material = Entity.Material == null ? null : new MaterialViewModel(Entity.Material, RepositoryFactory); 

		}

		public override void CopyTo(RequestDetailViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.EquipmentExistance = EquipmentExistance; 

			target.AdditionalInfo = AdditionalInfo; 

			target.EquipmentLeadTime = EquipmentLeadTime; 

			target.Count = Count; 

			target.Price = Price; 

			target.CalculationPrice = CalculationPrice; 

			target.Sum = Sum; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

			target.Request = Request; 

			target.Drawing = Drawing; 

			target.Group = Group; 

			target.Detail = Detail; 

			target.Material = Material; 

		}

		public override RequestDetailViewModel Clone()
		{
			var copy = new RequestDetailViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(RequestDetailViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((RequestDetailViewModel) obj);
        }
	}


	// The viewmodel for RollingRecord
	public partial class RollingRecordViewModel : EntityViewModel<Rti.Model.Domain.RollingRecord, RollingRecordViewModel>
	{
		// Конструктор для маппинга
		public RollingRecordViewModel() { }

        public RollingRecordViewModel(Rti.Model.Domain.RollingRecord entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private DateTime _rollingDate;

		private Int32 _count;

		private String _note;

		private Boolean _isDeleted;

		private ContragentViewModel _customer;

		private DrawingViewModel _drawing;

		private MaterialViewModel _material;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public DateTime RollingDate { get { return _rollingDate; } set { if (Equals(_rollingDate, value)) return; _rollingDate = value; OnPropertyChanged("RollingDate"); } }

		public Int32 Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged("Customer"); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }

		public MaterialViewModel Material { get { return _material; } set { _material = value; OnPropertyChanged("Material"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.RollingDate = RollingDate; 

			Entity.Count = Count; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Customer = Customer == null ? null : Customer.Entity; 

			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 

			Entity.Material = Material == null ? null : Material.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			RollingDate = Entity.RollingDate; 

			Count = Entity.Count; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 

			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 

			Material = Entity.Material == null ? null : new MaterialViewModel(Entity.Material, RepositoryFactory); 

		}

		public override void CopyTo(RollingRecordViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.RollingDate = RollingDate; 

			target.Count = Count; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

			target.Customer = Customer; 

			target.Drawing = Drawing; 

			target.Material = Material; 

		}

		public override RollingRecordViewModel Clone()
		{
			var copy = new RollingRecordViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(RollingRecordViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((RollingRecordViewModel) obj);
        }
	}


	// The viewmodel for ShavingRecord
	public partial class ShavingRecordViewModel : EntityViewModel<Rti.Model.Domain.ShavingRecord, ShavingRecordViewModel>
	{
		// Конструктор для маппинга
		public ShavingRecordViewModel() { }

        public ShavingRecordViewModel(Rti.Model.Domain.ShavingRecord entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private DateTime _shaveDate;

		private Int32 _inputCount;

		private Int32 _flawCount;

		private Boolean _isDeleted;

		private EmployeeViewModel _shaverEmployee;

		private DrawingViewModel _drawing;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public DateTime ShaveDate { get { return _shaveDate; } set { if (Equals(_shaveDate, value)) return; _shaveDate = value; OnPropertyChanged("ShaveDate"); } }

		public Int32 InputCount { get { return _inputCount; } set { if (Equals(_inputCount, value)) return; _inputCount = value; OnPropertyChanged("InputCount"); } }

		public Int32 FlawCount { get { return _flawCount; } set { if (Equals(_flawCount, value)) return; _flawCount = value; OnPropertyChanged("FlawCount"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public EmployeeViewModel ShaverEmployee { get { return _shaverEmployee; } set { _shaverEmployee = value; OnPropertyChanged("ShaverEmployee"); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.ShaveDate = ShaveDate; 

			Entity.InputCount = InputCount; 

			Entity.FlawCount = FlawCount; 

			Entity.IsDeleted = IsDeleted; 

			Entity.ShaverEmployee = ShaverEmployee == null ? null : ShaverEmployee.Entity; 

			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			ShaveDate = Entity.ShaveDate; 

			InputCount = Entity.InputCount; 

			FlawCount = Entity.FlawCount; 

			IsDeleted = Entity.IsDeleted; 

			ShaverEmployee = Entity.ShaverEmployee == null ? null : new EmployeeViewModel(Entity.ShaverEmployee, RepositoryFactory); 

			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 

		}

		public override void CopyTo(ShavingRecordViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.ShaveDate = ShaveDate; 

			target.InputCount = InputCount; 

			target.FlawCount = FlawCount; 

			target.IsDeleted = IsDeleted; 

			target.ShaverEmployee = ShaverEmployee; 

			target.Drawing = Drawing; 

		}

		public override ShavingRecordViewModel Clone()
		{
			var copy = new ShavingRecordViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ShavingRecordViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ShavingRecordViewModel) obj);
        }
	}


	// The viewmodel for ShippedProductRecord
	public partial class ShippedProductRecordViewModel : EntityViewModel<Rti.Model.Domain.ShippedProductRecord, ShippedProductRecordViewModel>
	{
		// Конструктор для маппинга
		public ShippedProductRecordViewModel() { }

        public ShippedProductRecordViewModel(Rti.Model.Domain.ShippedProductRecord entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private String _payDocNumber;

		private DateTime _payDocDate;

		private Decimal? _advanceSum;

		private DateTime _shipmentDate;

		private String _taxInvoiceNumber;

		private Decimal _sum;

		private Decimal? _equipmentSum;

		private String _note;

		private InvoiceViewModel _invoice;

		private EquipmentViewModel _equipment;

		private EmployeeViewModel _employee;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public String PayDocNumber { get { return _payDocNumber; } set { if (Equals(_payDocNumber, value)) return; _payDocNumber = value; OnPropertyChanged("PayDocNumber"); } }

		public DateTime PayDocDate { get { return _payDocDate; } set { if (Equals(_payDocDate, value)) return; _payDocDate = value; OnPropertyChanged("PayDocDate"); } }

		public Decimal? AdvanceSum { get { return _advanceSum; } set { if (Equals(_advanceSum, value)) return; _advanceSum = value; OnPropertyChanged("AdvanceSum"); } }

		public DateTime ShipmentDate { get { return _shipmentDate; } set { if (Equals(_shipmentDate, value)) return; _shipmentDate = value; OnPropertyChanged("ShipmentDate"); } }

		public String TaxInvoiceNumber { get { return _taxInvoiceNumber; } set { if (Equals(_taxInvoiceNumber, value)) return; _taxInvoiceNumber = value; OnPropertyChanged("TaxInvoiceNumber"); } }

		public Decimal Sum { get { return _sum; } set { if (Equals(_sum, value)) return; _sum = value; OnPropertyChanged("Sum"); } }

		public Decimal? EquipmentSum { get { return _equipmentSum; } set { if (Equals(_equipmentSum, value)) return; _equipmentSum = value; OnPropertyChanged("EquipmentSum"); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

		public InvoiceViewModel Invoice { get { return _invoice; } set { _invoice = value; OnPropertyChanged("Invoice"); } }

		public EquipmentViewModel Equipment { get { return _equipment; } set { _equipment = value; OnPropertyChanged("Equipment"); } }

		public EmployeeViewModel Employee { get { return _employee; } set { _employee = value; OnPropertyChanged("Employee"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.PayDocNumber = PayDocNumber; 

			Entity.PayDocDate = PayDocDate; 

			Entity.AdvanceSum = AdvanceSum; 

			Entity.ShipmentDate = ShipmentDate; 

			Entity.TaxInvoiceNumber = TaxInvoiceNumber; 

			Entity.Sum = Sum; 

			Entity.EquipmentSum = EquipmentSum; 

			Entity.Note = Note; 

			Entity.Invoice = Invoice == null ? null : Invoice.Entity; 

			Entity.Equipment = Equipment == null ? null : Equipment.Entity; 

			Entity.Employee = Employee == null ? null : Employee.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			PayDocNumber = Entity.PayDocNumber; 

			PayDocDate = Entity.PayDocDate; 

			AdvanceSum = Entity.AdvanceSum; 

			ShipmentDate = Entity.ShipmentDate; 

			TaxInvoiceNumber = Entity.TaxInvoiceNumber; 

			Sum = Entity.Sum; 

			EquipmentSum = Entity.EquipmentSum; 

			Note = Entity.Note; 

			Invoice = Entity.Invoice == null ? null : new InvoiceViewModel(Entity.Invoice, RepositoryFactory); 

			Equipment = Entity.Equipment == null ? null : new EquipmentViewModel(Entity.Equipment, RepositoryFactory); 

			Employee = Entity.Employee == null ? null : new EmployeeViewModel(Entity.Employee, RepositoryFactory); 

		}

		public override void CopyTo(ShippedProductRecordViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.PayDocNumber = PayDocNumber; 

			target.PayDocDate = PayDocDate; 

			target.AdvanceSum = AdvanceSum; 

			target.ShipmentDate = ShipmentDate; 

			target.TaxInvoiceNumber = TaxInvoiceNumber; 

			target.Sum = Sum; 

			target.EquipmentSum = EquipmentSum; 

			target.Note = Note; 

			target.Invoice = Invoice; 

			target.Equipment = Equipment; 

			target.Employee = Employee; 

		}

		public override ShippedProductRecordViewModel Clone()
		{
			var copy = new ShippedProductRecordViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ShippedProductRecordViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ShippedProductRecordViewModel) obj);
        }
	}


	// The viewmodel for ShippingOrderRecord
	public partial class ShippingOrderRecordViewModel : EntityViewModel<Rti.Model.Domain.ShippingOrderRecord, ShippingOrderRecordViewModel>
	{
		// Конструктор для маппинга
		public ShippingOrderRecordViewModel() { }

        public ShippingOrderRecordViewModel(Rti.Model.Domain.ShippingOrderRecord entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }


		private Int32 _id;

		private Int32 _sortOrder;

		private DateTime _orderDate;

		private Int32 _count;

		private Boolean _isDeleted;

		private ContragentViewModel _customer;

		private DrawingViewModel _drawing;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }

		public DateTime OrderDate { get { return _orderDate; } set { if (Equals(_orderDate, value)) return; _orderDate = value; OnPropertyChanged("OrderDate"); } }

		public Int32 Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }

		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged("Customer"); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.OrderDate = OrderDate; 

			Entity.Count = Count; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Customer = Customer == null ? null : Customer.Entity; 

			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			OrderDate = Entity.OrderDate; 

			Count = Entity.Count; 

			IsDeleted = Entity.IsDeleted; 

			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 

			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 

		}

		public override void CopyTo(ShippingOrderRecordViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.OrderDate = OrderDate; 

			target.Count = Count; 

			target.IsDeleted = IsDeleted; 

			target.Customer = Customer; 

			target.Drawing = Drawing; 

		}

		public override ShippingOrderRecordViewModel Clone()
		{
			var copy = new ShippingOrderRecordViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ShippingOrderRecordViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ShippingOrderRecordViewModel) obj);
        }
	}


}
