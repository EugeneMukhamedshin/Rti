











using System;
using System.Xml.Linq;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(AdditionalInfoViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override AdditionalInfoViewModel Clone()
		{
			var copy = new AdditionalInfoViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
		private String _note;

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
		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }

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
			Entity.Note = Note; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
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
			Note = Entity.Note; 
			IsMapping = false;
		}

		public override void CopyFrom(CalculationViewModel source)
		{
			IsMapping = true;
			MainMaterial = source.MainMaterial;
			Rubber = source.Rubber;
			Clue = source.Clue;
			Armature = source.Armature;
			Sand = source.Sand;
			Textile = source.Textile;
			OtherMaterial = source.OtherMaterial;
			Transport = source.Transport;
			MainSalary = source.MainSalary;
			AdditionalSalary = source.AdditionalSalary;
			FixedTax = source.FixedTax;
			TotalDivision = source.TotalDivision;
			TotalManufacture = source.TotalManufacture;
			MainSummary = source.MainSummary;
			PowerForFormed = source.PowerForFormed;
			OtherPower = source.OtherPower;
			MainAndPowerSummary = source.MainAndPowerSummary;
			Unforseen = source.Unforseen;
			NetCost = source.NetCost;
			Profitability = source.Profitability;
			Price = source.Price;
			NdsTax = source.NdsTax;
			Summary = source.Summary;
			Note = source.Note;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override CalculationViewModel Clone()
		{
			var copy = new CalculationViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			if (MainMaterial != null)
				element.Add(new XAttribute("MainMaterial", MainMaterial));
			if (Rubber != null)
				element.Add(new XAttribute("Rubber", Rubber));
			if (Clue != null)
				element.Add(new XAttribute("Clue", Clue));
			if (Armature != null)
				element.Add(new XAttribute("Armature", Armature));
			if (Sand != null)
				element.Add(new XAttribute("Sand", Sand));
			if (Textile != null)
				element.Add(new XAttribute("Textile", Textile));
			if (OtherMaterial != null)
				element.Add(new XAttribute("OtherMaterial", OtherMaterial));
			if (Transport != null)
				element.Add(new XAttribute("Transport", Transport));
			if (MainSalary != null)
				element.Add(new XAttribute("MainSalary", MainSalary));
			if (AdditionalSalary != null)
				element.Add(new XAttribute("AdditionalSalary", AdditionalSalary));
			if (FixedTax != null)
				element.Add(new XAttribute("FixedTax", FixedTax));
			if (TotalDivision != null)
				element.Add(new XAttribute("TotalDivision", TotalDivision));
			if (TotalManufacture != null)
				element.Add(new XAttribute("TotalManufacture", TotalManufacture));
			if (MainSummary != null)
				element.Add(new XAttribute("MainSummary", MainSummary));
			if (PowerForFormed != null)
				element.Add(new XAttribute("PowerForFormed", PowerForFormed));
			if (OtherPower != null)
				element.Add(new XAttribute("OtherPower", OtherPower));
			if (MainAndPowerSummary != null)
				element.Add(new XAttribute("MainAndPowerSummary", MainAndPowerSummary));
			if (Unforseen != null)
				element.Add(new XAttribute("Unforseen", Unforseen));
			if (NetCost != null)
				element.Add(new XAttribute("NetCost", NetCost));
			if (Profitability != null)
				element.Add(new XAttribute("Profitability", Profitability));
			if (Price != null)
				element.Add(new XAttribute("Price", Price));
			if (NdsTax != null)
				element.Add(new XAttribute("NdsTax", NdsTax));
			if (Summary != null)
				element.Add(new XAttribute("Summary", Summary));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));

			CustomFillXElement(element);
			return element;
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
		private Double _kTr;
		private Double _kEsn;
		private Double _kObCeh;
		private Double _kObPr;
		private Double _kEl;
		private Double _kNep;
		private Double _kRen;
		private Double _nds;
		private Double _kSt;
		private DateTime _dateFrom;
		private DateTime _dateTo;
		private Boolean _isDeleted;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Double KTr { get { return _kTr; } set { if (Equals(_kTr, value)) return; _kTr = value; OnPropertyChanged("KTr"); } }
		public Double KEsn { get { return _kEsn; } set { if (Equals(_kEsn, value)) return; _kEsn = value; OnPropertyChanged("KEsn"); } }
		public Double KObCeh { get { return _kObCeh; } set { if (Equals(_kObCeh, value)) return; _kObCeh = value; OnPropertyChanged("KObCeh"); } }
		public Double KObPr { get { return _kObPr; } set { if (Equals(_kObPr, value)) return; _kObPr = value; OnPropertyChanged("KObPr"); } }
		public Double KEl { get { return _kEl; } set { if (Equals(_kEl, value)) return; _kEl = value; OnPropertyChanged("KEl"); } }
		public Double KNep { get { return _kNep; } set { if (Equals(_kNep, value)) return; _kNep = value; OnPropertyChanged("KNep"); } }
		public Double KRen { get { return _kRen; } set { if (Equals(_kRen, value)) return; _kRen = value; OnPropertyChanged("KRen"); } }
		public Double Nds { get { return _nds; } set { if (Equals(_nds, value)) return; _nds = value; OnPropertyChanged("Nds"); } }
		public Double KSt { get { return _kSt; } set { if (Equals(_kSt, value)) return; _kSt = value; OnPropertyChanged("KSt"); } }
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
			IsMapping = true;
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
			IsMapping = false;
		}

		public override void CopyFrom(ConstantViewModel source)
		{
			IsMapping = true;
			KTr = source.KTr;
			KEsn = source.KEsn;
			KObCeh = source.KObCeh;
			KObPr = source.KObPr;
			KEl = source.KEl;
			KNep = source.KNep;
			KRen = source.KRen;
			Nds = source.Nds;
			KSt = source.KSt;
			DateFrom = source.DateFrom;
			DateTo = source.DateTo;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ConstantViewModel Clone()
		{
			var copy = new ConstantViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("KTr", KTr));
			element.Add(new XAttribute("KEsn", KEsn));
			element.Add(new XAttribute("KObCeh", KObCeh));
			element.Add(new XAttribute("KObPr", KObPr));
			element.Add(new XAttribute("KEl", KEl));
			element.Add(new XAttribute("KNep", KNep));
			element.Add(new XAttribute("KRen", KRen));
			element.Add(new XAttribute("Nds", Nds));
			element.Add(new XAttribute("KSt", KSt));
			element.Add(new XAttribute("DateFrom", DateFrom));
			element.Add(new XAttribute("DateTo", DateTo));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
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
			IsMapping = false;
		}

		public override void CopyFrom(ContragentViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			ContragentTypeEnum = source.ContragentTypeEnum;
			Address = source.Address;
			Director = source.Director;
			Trustee = source.Trustee;
			Phone = source.Phone;
			Grounding = source.Grounding;
			Inn = source.Inn;
			Kpp = source.Kpp;
			Account = source.Account;
			CorrAccount = source.CorrAccount;
			Okved = source.Okved;
			Okato = source.Okato;
			Okpo = source.Okpo;
			Ogrn = source.Ogrn;
			Bik = source.Bik;
			Bank = source.Bank;
			Email = source.Email;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ContragentViewModel Clone()
		{
			var copy = new ContragentViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			element.Add(new XAttribute("ContragentTypeEnum", ContragentTypeEnum));
			if (Address != null)
				element.Add(new XAttribute("Address", Address));
			if (Director != null)
				element.Add(new XAttribute("Director", Director));
			if (Trustee != null)
				element.Add(new XAttribute("Trustee", Trustee));
			if (Phone != null)
				element.Add(new XAttribute("Phone", Phone));
			if (Grounding != null)
				element.Add(new XAttribute("Grounding", Grounding));
			if (Inn != null)
				element.Add(new XAttribute("Inn", Inn));
			if (Kpp != null)
				element.Add(new XAttribute("Kpp", Kpp));
			if (Account != null)
				element.Add(new XAttribute("Account", Account));
			if (CorrAccount != null)
				element.Add(new XAttribute("CorrAccount", CorrAccount));
			if (Okved != null)
				element.Add(new XAttribute("Okved", Okved));
			if (Okato != null)
				element.Add(new XAttribute("Okato", Okato));
			if (Okpo != null)
				element.Add(new XAttribute("Okpo", Okpo));
			if (Ogrn != null)
				element.Add(new XAttribute("Ogrn", Ogrn));
			if (Bik != null)
				element.Add(new XAttribute("Bik", Bik));
			if (Bank != null)
				element.Add(new XAttribute("Bank", Bank));
			if (Email != null)
				element.Add(new XAttribute("Email", Email));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(DetailViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override DetailViewModel Clone()
		{
			var copy = new DetailViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
		private Double? _shruffPercent;
		private Double? _massWithShruff;
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
		private Double? _factMass;
		private String _techNote;
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
		private ContragentViewModel _customer;
		private ContragentViewModel _secondaryCustomer;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public DateTime? CreationDate { get { return _creationDate; } set { if (Equals(_creationDate, value)) return; _creationDate = value; OnPropertyChanged("CreationDate"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }
		public String AdditionalInfo { get { return _additionalInfo; } set { if (Equals(_additionalInfo, value)) return; _additionalInfo = value; OnPropertyChanged("AdditionalInfo"); } }
		public String Code { get { return _code; } set { if (Equals(_code, value)) return; _code = value; OnPropertyChanged("Code"); } }
		public Double? ShruffPercent { get { return _shruffPercent; } set { if (Equals(_shruffPercent, value)) return; _shruffPercent = value; OnPropertyChanged("ShruffPercent"); } }
		public Double? MassWithShruff { get { return _massWithShruff; } set { if (Equals(_massWithShruff, value)) return; _massWithShruff = value; OnPropertyChanged("MassWithShruff"); } }
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
		public Double? FactMass { get { return _factMass; } set { if (Equals(_factMass, value)) return; _factMass = value; OnPropertyChanged("FactMass"); } }
		public String TechNote { get { return _techNote; } set { if (Equals(_techNote, value)) return; _techNote = value; OnPropertyChanged("TechNote"); } }
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
		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged("Customer"); } }
		public ContragentViewModel SecondaryCustomer { get { return _secondaryCustomer; } set { _secondaryCustomer = value; OnPropertyChanged("SecondaryCustomer"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.CreationDate = CreationDate; 
			Entity.SortOrder = SortOrder; 
			Entity.Name = Name; 
			Entity.AdditionalInfo = AdditionalInfo; 
			Entity.Code = Code; 
			Entity.ShruffPercent = ShruffPercent; 
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
			Entity.FactMass = FactMass; 
			Entity.TechNote = TechNote; 
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
			Entity.Customer = Customer == null ? null : Customer.Entity; 
			Entity.SecondaryCustomer = SecondaryCustomer == null ? null : SecondaryCustomer.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			CreationDate = Entity.CreationDate; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			AdditionalInfo = Entity.AdditionalInfo; 
			Code = Entity.Code; 
			ShruffPercent = Entity.ShruffPercent; 
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
			FactMass = Entity.FactMass; 
			TechNote = Entity.TechNote; 
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
			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 
			SecondaryCustomer = Entity.SecondaryCustomer == null ? null : new ContragentViewModel(Entity.SecondaryCustomer, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(DrawingViewModel source)
		{
			IsMapping = true;
			CreationDate = source.CreationDate;
			SortOrder = source.SortOrder;
			Name = source.Name;
			AdditionalInfo = source.AdditionalInfo;
			Code = source.Code;
			ShruffPercent = source.ShruffPercent;
			MassWithShruff = source.MassWithShruff;
			Price = source.Price;
			ShavingPrice = source.ShavingPrice;
			CalculationPriceManual = source.CalculationPriceManual;
			Width = source.Width;
			Length = source.Length;
			Thickness = source.Thickness;
			InnerDiameter = source.InnerDiameter;
			OuterDiameter = source.OuterDiameter;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			FactMass = source.FactMass;
			TechNote = source.TechNote;
			Group = source.Group;
			Detail = source.Detail;
			MaterialByPassport = source.MaterialByPassport;
			Material = source.Material;
			MeasureUnit = source.MeasureUnit;
			MassCalculation = source.MassCalculation;
			PlanCalculation = source.PlanCalculation;
			FactCalculation = source.FactCalculation;
			Equipment = source.Equipment;
			Method = source.Method;
			DrawingImage = source.DrawingImage;
			Customer = source.Customer;
			SecondaryCustomer = source.SecondaryCustomer;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override DrawingViewModel Clone()
		{
			var copy = new DrawingViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			if (CreationDate != null)
				element.Add(new XAttribute("CreationDate", CreationDate));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (AdditionalInfo != null)
				element.Add(new XAttribute("AdditionalInfo", AdditionalInfo));
			if (Code != null)
				element.Add(new XAttribute("Code", Code));
			if (ShruffPercent != null)
				element.Add(new XAttribute("ShruffPercent", ShruffPercent));
			if (MassWithShruff != null)
				element.Add(new XAttribute("MassWithShruff", MassWithShruff));
			if (Price != null)
				element.Add(new XAttribute("Price", Price));
			if (ShavingPrice != null)
				element.Add(new XAttribute("ShavingPrice", ShavingPrice));
			if (CalculationPriceManual != null)
				element.Add(new XAttribute("CalculationPriceManual", CalculationPriceManual));
			if (Width != null)
				element.Add(new XAttribute("Width", Width));
			if (Length != null)
				element.Add(new XAttribute("Length", Length));
			if (Thickness != null)
				element.Add(new XAttribute("Thickness", Thickness));
			if (InnerDiameter != null)
				element.Add(new XAttribute("InnerDiameter", InnerDiameter));
			if (OuterDiameter != null)
				element.Add(new XAttribute("OuterDiameter", OuterDiameter));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (FactMass != null)
				element.Add(new XAttribute("FactMass", FactMass));
			if (TechNote != null)
				element.Add(new XAttribute("TechNote", TechNote));
			if (Group != null)
				element.Add(Group.GetXElement("Group"));
			if (Detail != null)
				element.Add(Detail.GetXElement("Detail"));
			if (MaterialByPassport != null)
				element.Add(MaterialByPassport.GetXElement("MaterialByPassport"));
			if (Material != null)
				element.Add(Material.GetXElement("Material"));
			if (MeasureUnit != null)
				element.Add(MeasureUnit.GetXElement("MeasureUnit"));
			if (MassCalculation != null)
				element.Add(MassCalculation.GetXElement("MassCalculation"));
			if (PlanCalculation != null)
				element.Add(PlanCalculation.GetXElement("PlanCalculation"));
			if (FactCalculation != null)
				element.Add(FactCalculation.GetXElement("FactCalculation"));
			if (Equipment != null)
				element.Add(Equipment.GetXElement("Equipment"));
			if (Method != null)
				element.Add(Method.GetXElement("Method"));
			if (DrawingImage != null)
				element.Add(DrawingImage.GetXElement("DrawingImage"));
			if (Customer != null)
				element.Add(Customer.GetXElement("Customer"));
			if (SecondaryCustomer != null)
				element.Add(SecondaryCustomer.GetXElement("SecondaryCustomer"));

			CustomFillXElement(element);
			return element;
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


	// The viewmodel for DrawingFlowsheetMachine
	public partial class DrawingFlowsheetMachineViewModel : EntityViewModel<Rti.Model.Domain.DrawingFlowsheetMachine, DrawingFlowsheetMachineViewModel>
	{
		// Конструктор для маппинга
		public DrawingFlowsheetMachineViewModel() { }

        public DrawingFlowsheetMachineViewModel(Rti.Model.Domain.DrawingFlowsheetMachine entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private Int32 _sortOrder;
		private Decimal? _plateTemperature;
		private Decimal? _cureTime;
		private DrawingViewModel _drawing;
		private MachineViewModel _machine;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public Decimal? PlateTemperature { get { return _plateTemperature; } set { if (Equals(_plateTemperature, value)) return; _plateTemperature = value; OnPropertyChanged("PlateTemperature"); } }
		public Decimal? CureTime { get { return _cureTime; } set { if (Equals(_cureTime, value)) return; _cureTime = value; OnPropertyChanged("CureTime"); } }
		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }
		public MachineViewModel Machine { get { return _machine; } set { _machine = value; OnPropertyChanged("Machine"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.PlateTemperature = PlateTemperature; 
			Entity.CureTime = CureTime; 
			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 
			Entity.Machine = Machine == null ? null : Machine.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			PlateTemperature = Entity.PlateTemperature; 
			CureTime = Entity.CureTime; 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			Machine = Entity.Machine == null ? null : new MachineViewModel(Entity.Machine, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(DrawingFlowsheetMachineViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			PlateTemperature = source.PlateTemperature;
			CureTime = source.CureTime;
			Drawing = source.Drawing;
			Machine = source.Machine;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override DrawingFlowsheetMachineViewModel Clone()
		{
			var copy = new DrawingFlowsheetMachineViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (PlateTemperature != null)
				element.Add(new XAttribute("PlateTemperature", PlateTemperature));
			if (CureTime != null)
				element.Add(new XAttribute("CureTime", CureTime));
			if (Drawing != null)
				element.Add(Drawing.GetXElement("Drawing"));
			if (Machine != null)
				element.Add(Machine.GetXElement("Machine"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DrawingFlowsheetMachineViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((DrawingFlowsheetMachineViewModel) obj);
        }
	}


	// The viewmodel for DrawingFlowsheetProcess
	public partial class DrawingFlowsheetProcessViewModel : EntityViewModel<Rti.Model.Domain.DrawingFlowsheetProcess, DrawingFlowsheetProcessViewModel>
	{
		// Конструктор для маппинга
		public DrawingFlowsheetProcessViewModel() { }

        public DrawingFlowsheetProcessViewModel(Rti.Model.Domain.DrawingFlowsheetProcess entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private Int32? _sortOrder;
		private String _name;
		private String _operation;
		private String _executor;
		private String _varName;
		private Decimal _normTime;
		private String _note;
		private DrawingViewModel _drawing;
		private ProcessViewModel _process;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32? SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }
		public String Operation { get { return _operation; } set { if (Equals(_operation, value)) return; _operation = value; OnPropertyChanged("Operation"); } }
		public String Executor { get { return _executor; } set { if (Equals(_executor, value)) return; _executor = value; OnPropertyChanged("Executor"); } }
		public String VarName { get { return _varName; } set { if (Equals(_varName, value)) return; _varName = value; OnPropertyChanged("VarName"); } }
		public Decimal NormTime { get { return _normTime; } set { if (Equals(_normTime, value)) return; _normTime = value; OnPropertyChanged("NormTime"); } }
		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }
		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }
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
			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 
			Entity.Process = Process == null ? null : Process.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			Operation = Entity.Operation; 
			Executor = Entity.Executor; 
			VarName = Entity.VarName; 
			NormTime = Entity.NormTime; 
			Note = Entity.Note; 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			Process = Entity.Process == null ? null : new ProcessViewModel(Entity.Process, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(DrawingFlowsheetProcessViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			Operation = source.Operation;
			Executor = source.Executor;
			VarName = source.VarName;
			NormTime = source.NormTime;
			Note = source.Note;
			Drawing = source.Drawing;
			Process = source.Process;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override DrawingFlowsheetProcessViewModel Clone()
		{
			var copy = new DrawingFlowsheetProcessViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			if (SortOrder != null)
				element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Operation != null)
				element.Add(new XAttribute("Operation", Operation));
			if (Executor != null)
				element.Add(new XAttribute("Executor", Executor));
			if (VarName != null)
				element.Add(new XAttribute("VarName", VarName));
			element.Add(new XAttribute("NormTime", NormTime));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			if (Drawing != null)
				element.Add(Drawing.GetXElement("Drawing"));
			if (Process != null)
				element.Add(Process.GetXElement("Process"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DrawingFlowsheetProcessViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((DrawingFlowsheetProcessViewModel) obj);
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			CarModel = Entity.CarModel; 
			Number = Entity.Number; 
			Name = Entity.Name; 
			Document = Entity.Document; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(DriverViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			CarModel = source.CarModel;
			Number = source.Number;
			Name = source.Name;
			Document = source.Document;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override DriverViewModel Clone()
		{
			var copy = new DriverViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (CarModel != null)
				element.Add(new XAttribute("CarModel", CarModel));
			if (Number != null)
				element.Add(new XAttribute("Number", Number));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Document != null)
				element.Add(new XAttribute("Document", Document));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Code = Entity.Code; 
			FullName = Entity.FullName; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
			Job = Entity.Job == null ? null : new JobViewModel(Entity.Job, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(EmployeeViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Code = source.Code;
			FullName = source.FullName;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			Job = source.Job;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override EmployeeViewModel Clone()
		{
			var copy = new EmployeeViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Code != null)
				element.Add(new XAttribute("Code", Code));
			if (FullName != null)
				element.Add(new XAttribute("FullName", FullName));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Job != null)
				element.Add(Job.GetXElement("Job"));

			CustomFillXElement(element);
			return element;
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
		private Decimal _height;
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
		public Decimal Height { get { return _height; } set { if (Equals(_height, value)) return; _height = value; OnPropertyChanged("Height"); } }
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
			Entity.Height = Height; 
			Entity.FormCount = FormCount; 
			Entity.SlotCount = SlotCount; 
			Entity.Output = Output; 
			Entity.Note = Note; 
			Entity.IsDeleted = IsDeleted; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			ExistanceEnum = Entity.ExistanceEnum; 
			Square = Entity.Square; 
			Height = Entity.Height; 
			FormCount = Entity.FormCount; 
			SlotCount = Entity.SlotCount; 
			Output = Entity.Output; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(EquipmentViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			ExistanceEnum = source.ExistanceEnum;
			Square = source.Square;
			Height = source.Height;
			FormCount = source.FormCount;
			SlotCount = source.SlotCount;
			Output = source.Output;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override EquipmentViewModel Clone()
		{
			var copy = new EquipmentViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			element.Add(new XAttribute("ExistanceEnum", ExistanceEnum));
			element.Add(new XAttribute("Square", Square));
			element.Add(new XAttribute("Height", Height));
			element.Add(new XAttribute("FormCount", FormCount));
			element.Add(new XAttribute("SlotCount", SlotCount));
			element.Add(new XAttribute("Output", Output));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(GroupViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override GroupViewModel Clone()
		{
			var copy = new GroupViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			Data = Entity.Data; 
			IsMapping = false;
		}

		public override void CopyFrom(ImageViewModel source)
		{
			IsMapping = true;
			Data = source.Data;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ImageViewModel Clone()
		{
			var copy = new ImageViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			if (Data != null)
				element.Add(new XAttribute("Data", Data));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			IsDeleted = Entity.IsDeleted; 
			InvoiceNumber = Entity.InvoiceNumber; 
			InvoiceDate = Entity.InvoiceDate; 
			Request = Entity.Request == null ? null : new RequestViewModel(Entity.Request, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(InvoiceViewModel source)
		{
			IsMapping = true;
			IsDeleted = source.IsDeleted;
			InvoiceNumber = source.InvoiceNumber;
			InvoiceDate = source.InvoiceDate;
			Request = source.Request;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override InvoiceViewModel Clone()
		{
			var copy = new InvoiceViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (InvoiceNumber != null)
				element.Add(new XAttribute("InvoiceNumber", InvoiceNumber));
			element.Add(new XAttribute("InvoiceDate", InvoiceDate));
			if (Request != null)
				element.Add(Request.GetXElement("Request"));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			Login = Entity.Login; 
			Password = Entity.Password; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(JobViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			Login = source.Login;
			Password = source.Password;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override JobViewModel Clone()
		{
			var copy = new JobViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Login != null)
				element.Add(new XAttribute("Login", Login));
			if (Password != null)
				element.Add(new XAttribute("Password", Password));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
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
			IsMapping = false;
		}

		public override void CopyFrom(MachineViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			PlateSize = source.PlateSize;
			InvNumber = source.InvNumber;
			PlateCount = source.PlateCount;
			PlatePower = source.PlatePower;
			EnginePower = source.EnginePower;
			TotalPower = source.TotalPower;
			PowerPrice = source.PowerPrice;
			TimePrice = source.TimePrice;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override MachineViewModel Clone()
		{
			var copy = new MachineViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (PlateSize != null)
				element.Add(new XAttribute("PlateSize", PlateSize));
			if (InvNumber != null)
				element.Add(new XAttribute("InvNumber", InvNumber));
			if (PlateCount != null)
				element.Add(new XAttribute("PlateCount", PlateCount));
			if (PlatePower != null)
				element.Add(new XAttribute("PlatePower", PlatePower));
			if (EnginePower != null)
				element.Add(new XAttribute("EnginePower", EnginePower));
			if (TotalPower != null)
				element.Add(new XAttribute("TotalPower", TotalPower));
			if (PowerPrice != null)
				element.Add(new XAttribute("PowerPrice", PowerPrice));
			if (TimePrice != null)
				element.Add(new XAttribute("TimePrice", TimePrice));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
		private Double? _materialDensity;
		private Double? _rndDShn;
		private Double? _rndS1;
		private Double? _rndS2;
		private Double? _rndDNar;
		private Double? _rndDVn;
		private Double? _rndDSr;
		private Double? _rndMRas;
		private Double? _sqS;
		private Double? _sqL;
		private Double? _sqB;
		private Double? _sqL1;
		private Double? _sqB1;
		private Double? _sqDVn;
		private Double? _vlS;
		private Double? _vlL;
		private Double? _vlB;
		private Double? _vlL1;
		private Double? _vlB1;
		private String _massFormula;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public DetailType DetailTypeEnum { get { return _detailTypeEnum; } set { if (Equals(_detailTypeEnum, value)) return; _detailTypeEnum = value; OnPropertyChanged("DetailTypeEnum"); } }
		public Double? MaterialDensity { get { return _materialDensity; } set { if (Equals(_materialDensity, value)) return; _materialDensity = value; OnPropertyChanged("MaterialDensity"); } }
		public Double? RndDShn { get { return _rndDShn; } set { if (Equals(_rndDShn, value)) return; _rndDShn = value; OnPropertyChanged("RndDShn"); } }
		public Double? RndS1 { get { return _rndS1; } set { if (Equals(_rndS1, value)) return; _rndS1 = value; OnPropertyChanged("RndS1"); } }
		public Double? RndS2 { get { return _rndS2; } set { if (Equals(_rndS2, value)) return; _rndS2 = value; OnPropertyChanged("RndS2"); } }
		public Double? RndDNar { get { return _rndDNar; } set { if (Equals(_rndDNar, value)) return; _rndDNar = value; OnPropertyChanged("RndDNar"); } }
		public Double? RndDVn { get { return _rndDVn; } set { if (Equals(_rndDVn, value)) return; _rndDVn = value; OnPropertyChanged("RndDVn"); } }
		public Double? RndDSr { get { return _rndDSr; } set { if (Equals(_rndDSr, value)) return; _rndDSr = value; OnPropertyChanged("RndDSr"); } }
		public Double? RndMRas { get { return _rndMRas; } set { if (Equals(_rndMRas, value)) return; _rndMRas = value; OnPropertyChanged("RndMRas"); } }
		public Double? SqS { get { return _sqS; } set { if (Equals(_sqS, value)) return; _sqS = value; OnPropertyChanged("SqS"); } }
		public Double? SqL { get { return _sqL; } set { if (Equals(_sqL, value)) return; _sqL = value; OnPropertyChanged("SqL"); } }
		public Double? SqB { get { return _sqB; } set { if (Equals(_sqB, value)) return; _sqB = value; OnPropertyChanged("SqB"); } }
		public Double? SqL1 { get { return _sqL1; } set { if (Equals(_sqL1, value)) return; _sqL1 = value; OnPropertyChanged("SqL1"); } }
		public Double? SqB1 { get { return _sqB1; } set { if (Equals(_sqB1, value)) return; _sqB1 = value; OnPropertyChanged("SqB1"); } }
		public Double? SqDVn { get { return _sqDVn; } set { if (Equals(_sqDVn, value)) return; _sqDVn = value; OnPropertyChanged("SqDVn"); } }
		public Double? VlS { get { return _vlS; } set { if (Equals(_vlS, value)) return; _vlS = value; OnPropertyChanged("VlS"); } }
		public Double? VlL { get { return _vlL; } set { if (Equals(_vlL, value)) return; _vlL = value; OnPropertyChanged("VlL"); } }
		public Double? VlB { get { return _vlB; } set { if (Equals(_vlB, value)) return; _vlB = value; OnPropertyChanged("VlB"); } }
		public Double? VlL1 { get { return _vlL1; } set { if (Equals(_vlL1, value)) return; _vlL1 = value; OnPropertyChanged("VlL1"); } }
		public Double? VlB1 { get { return _vlB1; } set { if (Equals(_vlB1, value)) return; _vlB1 = value; OnPropertyChanged("VlB1"); } }
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
			IsMapping = true;
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
			IsMapping = false;
		}

		public override void CopyFrom(MassCalculationViewModel source)
		{
			IsMapping = true;
			DetailTypeEnum = source.DetailTypeEnum;
			MaterialDensity = source.MaterialDensity;
			RndDShn = source.RndDShn;
			RndS1 = source.RndS1;
			RndS2 = source.RndS2;
			RndDNar = source.RndDNar;
			RndDVn = source.RndDVn;
			RndDSr = source.RndDSr;
			RndMRas = source.RndMRas;
			SqS = source.SqS;
			SqL = source.SqL;
			SqB = source.SqB;
			SqL1 = source.SqL1;
			SqB1 = source.SqB1;
			SqDVn = source.SqDVn;
			VlS = source.VlS;
			VlL = source.VlL;
			VlB = source.VlB;
			VlL1 = source.VlL1;
			VlB1 = source.VlB1;
			MassFormula = source.MassFormula;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override MassCalculationViewModel Clone()
		{
			var copy = new MassCalculationViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("DetailTypeEnum", DetailTypeEnum));
			if (MaterialDensity != null)
				element.Add(new XAttribute("MaterialDensity", MaterialDensity));
			if (RndDShn != null)
				element.Add(new XAttribute("RndDShn", RndDShn));
			if (RndS1 != null)
				element.Add(new XAttribute("RndS1", RndS1));
			if (RndS2 != null)
				element.Add(new XAttribute("RndS2", RndS2));
			if (RndDNar != null)
				element.Add(new XAttribute("RndDNar", RndDNar));
			if (RndDVn != null)
				element.Add(new XAttribute("RndDVn", RndDVn));
			if (RndDSr != null)
				element.Add(new XAttribute("RndDSr", RndDSr));
			if (RndMRas != null)
				element.Add(new XAttribute("RndMRas", RndMRas));
			if (SqS != null)
				element.Add(new XAttribute("SqS", SqS));
			if (SqL != null)
				element.Add(new XAttribute("SqL", SqL));
			if (SqB != null)
				element.Add(new XAttribute("SqB", SqB));
			if (SqL1 != null)
				element.Add(new XAttribute("SqL1", SqL1));
			if (SqB1 != null)
				element.Add(new XAttribute("SqB1", SqB1));
			if (SqDVn != null)
				element.Add(new XAttribute("SqDVn", SqDVn));
			if (VlS != null)
				element.Add(new XAttribute("VlS", VlS));
			if (VlL != null)
				element.Add(new XAttribute("VlL", VlL));
			if (VlB != null)
				element.Add(new XAttribute("VlB", VlB));
			if (VlL1 != null)
				element.Add(new XAttribute("VlL1", VlL1));
			if (VlB1 != null)
				element.Add(new XAttribute("VlB1", VlB1));
			if (MassFormula != null)
				element.Add(new XAttribute("MassFormula", MassFormula));

			CustomFillXElement(element);
			return element;
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
		private Double? _density;
		private Double? _thickness;
		private Double? _length;
		private Double? _width;
		private Decimal? _price;
		private String _note;
		private Boolean _isDeleted;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }
		public String TechConditions { get { return _techConditions; } set { if (Equals(_techConditions, value)) return; _techConditions = value; OnPropertyChanged("TechConditions"); } }
		public Double? Density { get { return _density; } set { if (Equals(_density, value)) return; _density = value; OnPropertyChanged("Density"); } }
		public Double? Thickness { get { return _thickness; } set { if (Equals(_thickness, value)) return; _thickness = value; OnPropertyChanged("Thickness"); } }
		public Double? Length { get { return _length; } set { if (Equals(_length, value)) return; _length = value; OnPropertyChanged("Length"); } }
		public Double? Width { get { return _width; } set { if (Equals(_width, value)) return; _width = value; OnPropertyChanged("Width"); } }
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
			IsMapping = true;
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
			IsMapping = false;
		}

		public override void CopyFrom(MaterialViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			TechConditions = source.TechConditions;
			Density = source.Density;
			Thickness = source.Thickness;
			Length = source.Length;
			Width = source.Width;
			Price = source.Price;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override MaterialViewModel Clone()
		{
			var copy = new MaterialViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (TechConditions != null)
				element.Add(new XAttribute("TechConditions", TechConditions));
			if (Density != null)
				element.Add(new XAttribute("Density", Density));
			if (Thickness != null)
				element.Add(new XAttribute("Thickness", Thickness));
			if (Length != null)
				element.Add(new XAttribute("Length", Length));
			if (Width != null)
				element.Add(new XAttribute("Width", Width));
			if (Price != null)
				element.Add(new XAttribute("Price", Price));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
		private String _forwardedTo;
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
		public String ForwardedTo { get { return _forwardedTo; } set { if (Equals(_forwardedTo, value)) return; _forwardedTo = value; OnPropertyChanged("ForwardedTo"); } }
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
			Entity.ForwardedTo = ForwardedTo; 
			Entity.IsDeleted = IsDeleted; 
			Entity.Supplier = Supplier == null ? null : Supplier.Entity; 
			Entity.Material = Material == null ? null : Material.Entity; 
			Entity.MeasureUnit = MeasureUnit == null ? null : MeasureUnit.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			InvoiceNumber = Entity.InvoiceNumber; 
			InvoiceSum = Entity.InvoiceSum; 
			WaybillDate = Entity.WaybillDate; 
			WaybillNumber = Entity.WaybillNumber; 
			Price = Entity.Price; 
			Count = Entity.Count; 
			ForwardedTo = Entity.ForwardedTo; 
			IsDeleted = Entity.IsDeleted; 
			Supplier = Entity.Supplier == null ? null : new ContragentViewModel(Entity.Supplier, RepositoryFactory); 
			Material = Entity.Material == null ? null : new MaterialViewModel(Entity.Material, RepositoryFactory); 
			MeasureUnit = Entity.MeasureUnit == null ? null : new MeasureUnitViewModel(Entity.MeasureUnit, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(MaterialArrivalRecordViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			InvoiceNumber = source.InvoiceNumber;
			InvoiceSum = source.InvoiceSum;
			WaybillDate = source.WaybillDate;
			WaybillNumber = source.WaybillNumber;
			Price = source.Price;
			Count = source.Count;
			ForwardedTo = source.ForwardedTo;
			IsDeleted = source.IsDeleted;
			Supplier = source.Supplier;
			Material = source.Material;
			MeasureUnit = source.MeasureUnit;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override MaterialArrivalRecordViewModel Clone()
		{
			var copy = new MaterialArrivalRecordViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (InvoiceNumber != null)
				element.Add(new XAttribute("InvoiceNumber", InvoiceNumber));
			element.Add(new XAttribute("InvoiceSum", InvoiceSum));
			element.Add(new XAttribute("WaybillDate", WaybillDate));
			if (WaybillNumber != null)
				element.Add(new XAttribute("WaybillNumber", WaybillNumber));
			element.Add(new XAttribute("Price", Price));
			element.Add(new XAttribute("Count", Count));
			if (ForwardedTo != null)
				element.Add(new XAttribute("ForwardedTo", ForwardedTo));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Supplier != null)
				element.Add(Supplier.GetXElement("Supplier"));
			if (Material != null)
				element.Add(Material.GetXElement("Material"));
			if (MeasureUnit != null)
				element.Add(MeasureUnit.GetXElement("MeasureUnit"));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			Code = Entity.Code; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(MeasureUnitViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			Code = source.Code;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override MeasureUnitViewModel Clone()
		{
			var copy = new MeasureUnitViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Code != null)
				element.Add(new XAttribute("Code", Code));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Name = Entity.Name; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
			IsMapping = false;
		}

		public override void CopyFrom(MethodViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Name = source.Name;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override MethodViewModel Clone()
		{
			var copy = new MethodViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));

			CustomFillXElement(element);
			return element;
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


	// The viewmodel for Payment
	public partial class PaymentViewModel : EntityViewModel<Rti.Model.Domain.Payment, PaymentViewModel>
	{
		// Конструктор для маппинга
		public PaymentViewModel() { }

        public PaymentViewModel(Rti.Model.Domain.Payment entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private DateTime _paymentDate;
		private String _paymentDocNumber;
		private Decimal _sum;
		private Boolean _isDeleted;
		private RequestViewModel _request;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public DateTime PaymentDate { get { return _paymentDate; } set { if (Equals(_paymentDate, value)) return; _paymentDate = value; OnPropertyChanged("PaymentDate"); } }
		public String PaymentDocNumber { get { return _paymentDocNumber; } set { if (Equals(_paymentDocNumber, value)) return; _paymentDocNumber = value; OnPropertyChanged("PaymentDocNumber"); } }
		public Decimal Sum { get { return _sum; } set { if (Equals(_sum, value)) return; _sum = value; OnPropertyChanged("Sum"); } }
		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }
		public RequestViewModel Request { get { return _request; } set { _request = value; OnPropertyChanged("Request"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.PaymentDate = PaymentDate; 
			Entity.PaymentDocNumber = PaymentDocNumber; 
			Entity.Sum = Sum; 
			Entity.IsDeleted = IsDeleted; 
			Entity.Request = Request == null ? null : Request.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			PaymentDate = Entity.PaymentDate; 
			PaymentDocNumber = Entity.PaymentDocNumber; 
			Sum = Entity.Sum; 
			IsDeleted = Entity.IsDeleted; 
			Request = Entity.Request == null ? null : new RequestViewModel(Entity.Request, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(PaymentViewModel source)
		{
			IsMapping = true;
			PaymentDate = source.PaymentDate;
			PaymentDocNumber = source.PaymentDocNumber;
			Sum = source.Sum;
			IsDeleted = source.IsDeleted;
			Request = source.Request;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override PaymentViewModel Clone()
		{
			var copy = new PaymentViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("PaymentDate", PaymentDate));
			if (PaymentDocNumber != null)
				element.Add(new XAttribute("PaymentDocNumber", PaymentDocNumber));
			element.Add(new XAttribute("Sum", Sum));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Request != null)
				element.Add(Request.GetXElement("Request"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(PaymentViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((PaymentViewModel) obj);
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
			IsMapping = true;
			Id = Entity.Id; 
			ProcessTypeEnum = Entity.ProcessTypeEnum; 
			Name = Entity.Name; 
			DefaultOperation = Entity.DefaultOperation; 
			DefaultExecutor = Entity.DefaultExecutor; 
			VariableName = Entity.VariableName; 
			DefaultNormTime = Entity.DefaultNormTime; 
			IsMapping = false;
		}

		public override void CopyFrom(ProcessViewModel source)
		{
			IsMapping = true;
			ProcessTypeEnum = source.ProcessTypeEnum;
			Name = source.Name;
			DefaultOperation = source.DefaultOperation;
			DefaultExecutor = source.DefaultExecutor;
			VariableName = source.VariableName;
			DefaultNormTime = source.DefaultNormTime;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ProcessViewModel Clone()
		{
			var copy = new ProcessViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("ProcessTypeEnum", ProcessTypeEnum));
			if (Name != null)
				element.Add(new XAttribute("Name", Name));
			if (DefaultOperation != null)
				element.Add(new XAttribute("DefaultOperation", DefaultOperation));
			if (DefaultExecutor != null)
				element.Add(new XAttribute("DefaultExecutor", DefaultExecutor));
			if (VariableName != null)
				element.Add(new XAttribute("VariableName", VariableName));
			if (DefaultNormTime != null)
				element.Add(new XAttribute("DefaultNormTime", DefaultNormTime));

			CustomFillXElement(element);
			return element;
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
		private DateTime? _invoiceDate;
		private Int32? _leadTime;
		private Boolean? _isPaid;
		private Boolean _isDeleted;
		private ContragentViewModel _customer;
		private ContragentViewModel _manufacturer;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 Number { get { return _number; } set { if (Equals(_number, value)) return; _number = value; OnPropertyChanged("Number"); } }
		public DateTime RegDate { get { return _regDate; } set { if (Equals(_regDate, value)) return; _regDate = value; OnPropertyChanged("RegDate"); } }
		public DateTime? ShipDate { get { return _shipDate; } set { if (Equals(_shipDate, value)) return; _shipDate = value; OnPropertyChanged("ShipDate"); } }
		public DateTime? InvoiceDate { get { return _invoiceDate; } set { if (Equals(_invoiceDate, value)) return; _invoiceDate = value; OnPropertyChanged("InvoiceDate"); } }
		public Int32? LeadTime { get { return _leadTime; } set { if (Equals(_leadTime, value)) return; _leadTime = value; OnPropertyChanged("LeadTime"); } }
		public Boolean? IsPaid { get { return _isPaid; } set { if (Equals(_isPaid, value)) return; _isPaid = value; OnPropertyChanged("IsPaid"); } }
		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }
		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged("Customer"); } }
		public ContragentViewModel Manufacturer { get { return _manufacturer; } set { _manufacturer = value; OnPropertyChanged("Manufacturer"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.Number = Number; 
			Entity.RegDate = RegDate; 
			Entity.ShipDate = ShipDate; 
			Entity.InvoiceDate = InvoiceDate; 
			Entity.LeadTime = LeadTime; 
			Entity.IsPaid = IsPaid; 
			Entity.IsDeleted = IsDeleted; 
			Entity.Customer = Customer == null ? null : Customer.Entity; 
			Entity.Manufacturer = Manufacturer == null ? null : Manufacturer.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			Number = Entity.Number; 
			RegDate = Entity.RegDate; 
			ShipDate = Entity.ShipDate; 
			InvoiceDate = Entity.InvoiceDate; 
			LeadTime = Entity.LeadTime; 
			IsPaid = Entity.IsPaid; 
			IsDeleted = Entity.IsDeleted; 
			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 
			Manufacturer = Entity.Manufacturer == null ? null : new ContragentViewModel(Entity.Manufacturer, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(RequestViewModel source)
		{
			IsMapping = true;
			Number = source.Number;
			RegDate = source.RegDate;
			ShipDate = source.ShipDate;
			InvoiceDate = source.InvoiceDate;
			LeadTime = source.LeadTime;
			IsPaid = source.IsPaid;
			IsDeleted = source.IsDeleted;
			Customer = source.Customer;
			Manufacturer = source.Manufacturer;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override RequestViewModel Clone()
		{
			var copy = new RequestViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("Number", Number));
			element.Add(new XAttribute("RegDate", RegDate));
			if (ShipDate != null)
				element.Add(new XAttribute("ShipDate", ShipDate));
			if (InvoiceDate != null)
				element.Add(new XAttribute("InvoiceDate", InvoiceDate));
			if (LeadTime != null)
				element.Add(new XAttribute("LeadTime", LeadTime));
			if (IsPaid != null)
				element.Add(new XAttribute("IsPaid", IsPaid));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Customer != null)
				element.Add(Customer.GetXElement("Customer"));
			if (Manufacturer != null)
				element.Add(Manufacturer.GetXElement("Manufacturer"));

			CustomFillXElement(element);
			return element;
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
		private String _additionalInfo;
		private Int32? _equipmentLeadTime;
		private Int32 _count;
		private Decimal _price;
		private Decimal? _calculationPrice;
		private Decimal _sum;
		private String _note;
		private RequestDetailState _requestDetailStateEnum;
		private Boolean _isDeleted;
		private RequestViewModel _request;
		private DrawingViewModel _drawing;
		private GroupViewModel _group;
		private DetailViewModel _detail;
		private MaterialViewModel _material;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String AdditionalInfo { get { return _additionalInfo; } set { if (Equals(_additionalInfo, value)) return; _additionalInfo = value; OnPropertyChanged("AdditionalInfo"); } }
		public Int32? EquipmentLeadTime { get { return _equipmentLeadTime; } set { if (Equals(_equipmentLeadTime, value)) return; _equipmentLeadTime = value; OnPropertyChanged("EquipmentLeadTime"); } }
		public Int32 Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }
		public Decimal Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }
		public Decimal? CalculationPrice { get { return _calculationPrice; } set { if (Equals(_calculationPrice, value)) return; _calculationPrice = value; OnPropertyChanged("CalculationPrice"); } }
		public Decimal Sum { get { return _sum; } set { if (Equals(_sum, value)) return; _sum = value; OnPropertyChanged("Sum"); } }
		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }
		public RequestDetailState RequestDetailStateEnum { get { return _requestDetailStateEnum; } set { if (Equals(_requestDetailStateEnum, value)) return; _requestDetailStateEnum = value; OnPropertyChanged("RequestDetailStateEnum"); } }
		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }
		public RequestViewModel Request { get { return _request; } set { _request = value; OnPropertyChanged("Request"); } }
		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }
		public GroupViewModel Group { get { return _group; } set { _group = value; OnPropertyChanged("Group"); } }
		public DetailViewModel Detail { get { return _detail; } set { _detail = value; OnPropertyChanged("Detail"); } }
		public MaterialViewModel Material { get { return _material; } set { _material = value; OnPropertyChanged("Material"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.AdditionalInfo = AdditionalInfo; 
			Entity.EquipmentLeadTime = EquipmentLeadTime; 
			Entity.Count = Count; 
			Entity.Price = Price; 
			Entity.CalculationPrice = CalculationPrice; 
			Entity.Sum = Sum; 
			Entity.Note = Note; 
			Entity.RequestDetailStateEnum = RequestDetailStateEnum; 
			Entity.IsDeleted = IsDeleted; 
			Entity.Request = Request == null ? null : Request.Entity; 
			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 
			Entity.Group = Group == null ? null : Group.Entity; 
			Entity.Detail = Detail == null ? null : Detail.Entity; 
			Entity.Material = Material == null ? null : Material.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			AdditionalInfo = Entity.AdditionalInfo; 
			EquipmentLeadTime = Entity.EquipmentLeadTime; 
			Count = Entity.Count; 
			Price = Entity.Price; 
			CalculationPrice = Entity.CalculationPrice; 
			Sum = Entity.Sum; 
			Note = Entity.Note; 
			RequestDetailStateEnum = Entity.RequestDetailStateEnum; 
			IsDeleted = Entity.IsDeleted; 
			Request = Entity.Request == null ? null : new RequestViewModel(Entity.Request, RepositoryFactory); 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			Group = Entity.Group == null ? null : new GroupViewModel(Entity.Group, RepositoryFactory); 
			Detail = Entity.Detail == null ? null : new DetailViewModel(Entity.Detail, RepositoryFactory); 
			Material = Entity.Material == null ? null : new MaterialViewModel(Entity.Material, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(RequestDetailViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			AdditionalInfo = source.AdditionalInfo;
			EquipmentLeadTime = source.EquipmentLeadTime;
			Count = source.Count;
			Price = source.Price;
			CalculationPrice = source.CalculationPrice;
			Sum = source.Sum;
			Note = source.Note;
			RequestDetailStateEnum = source.RequestDetailStateEnum;
			IsDeleted = source.IsDeleted;
			Request = source.Request;
			Drawing = source.Drawing;
			Group = source.Group;
			Detail = source.Detail;
			Material = source.Material;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override RequestDetailViewModel Clone()
		{
			var copy = new RequestDetailViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (AdditionalInfo != null)
				element.Add(new XAttribute("AdditionalInfo", AdditionalInfo));
			if (EquipmentLeadTime != null)
				element.Add(new XAttribute("EquipmentLeadTime", EquipmentLeadTime));
			element.Add(new XAttribute("Count", Count));
			element.Add(new XAttribute("Price", Price));
			if (CalculationPrice != null)
				element.Add(new XAttribute("CalculationPrice", CalculationPrice));
			element.Add(new XAttribute("Sum", Sum));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("RequestDetailStateEnum", RequestDetailStateEnum));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Request != null)
				element.Add(Request.GetXElement("Request"));
			if (Drawing != null)
				element.Add(Drawing.GetXElement("Drawing"));
			if (Group != null)
				element.Add(Group.GetXElement("Group"));
			if (Detail != null)
				element.Add(Detail.GetXElement("Detail"));
			if (Material != null)
				element.Add(Material.GetXElement("Material"));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			RollingDate = Entity.RollingDate; 
			Count = Entity.Count; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			Material = Entity.Material == null ? null : new MaterialViewModel(Entity.Material, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(RollingRecordViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			RollingDate = source.RollingDate;
			Count = source.Count;
			Note = source.Note;
			IsDeleted = source.IsDeleted;
			Customer = source.Customer;
			Drawing = source.Drawing;
			Material = source.Material;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override RollingRecordViewModel Clone()
		{
			var copy = new RollingRecordViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			element.Add(new XAttribute("RollingDate", RollingDate));
			element.Add(new XAttribute("Count", Count));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Customer != null)
				element.Add(Customer.GetXElement("Customer"));
			if (Drawing != null)
				element.Add(Drawing.GetXElement("Drawing"));
			if (Material != null)
				element.Add(Material.GetXElement("Material"));

			CustomFillXElement(element);
			return element;
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
		private EmployeeViewModel _makerEmployee;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public DateTime ShaveDate { get { return _shaveDate; } set { if (Equals(_shaveDate, value)) return; _shaveDate = value; OnPropertyChanged("ShaveDate"); } }
		public Int32 InputCount { get { return _inputCount; } set { if (Equals(_inputCount, value)) return; _inputCount = value; OnPropertyChanged("InputCount"); } }
		public Int32 FlawCount { get { return _flawCount; } set { if (Equals(_flawCount, value)) return; _flawCount = value; OnPropertyChanged("FlawCount"); } }
		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }
		public EmployeeViewModel ShaverEmployee { get { return _shaverEmployee; } set { _shaverEmployee = value; OnPropertyChanged("ShaverEmployee"); } }
		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }
		public EmployeeViewModel MakerEmployee { get { return _makerEmployee; } set { _makerEmployee = value; OnPropertyChanged("MakerEmployee"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.ShaveDate = ShaveDate; 
			Entity.InputCount = InputCount; 
			Entity.FlawCount = FlawCount; 
			Entity.IsDeleted = IsDeleted; 
			Entity.ShaverEmployee = ShaverEmployee == null ? null : ShaverEmployee.Entity; 
			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 
			Entity.MakerEmployee = MakerEmployee == null ? null : MakerEmployee.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			ShaveDate = Entity.ShaveDate; 
			InputCount = Entity.InputCount; 
			FlawCount = Entity.FlawCount; 
			IsDeleted = Entity.IsDeleted; 
			ShaverEmployee = Entity.ShaverEmployee == null ? null : new EmployeeViewModel(Entity.ShaverEmployee, RepositoryFactory); 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			MakerEmployee = Entity.MakerEmployee == null ? null : new EmployeeViewModel(Entity.MakerEmployee, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(ShavingRecordViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			ShaveDate = source.ShaveDate;
			InputCount = source.InputCount;
			FlawCount = source.FlawCount;
			IsDeleted = source.IsDeleted;
			ShaverEmployee = source.ShaverEmployee;
			Drawing = source.Drawing;
			MakerEmployee = source.MakerEmployee;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ShavingRecordViewModel Clone()
		{
			var copy = new ShavingRecordViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			element.Add(new XAttribute("ShaveDate", ShaveDate));
			element.Add(new XAttribute("InputCount", InputCount));
			element.Add(new XAttribute("FlawCount", FlawCount));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (ShaverEmployee != null)
				element.Add(ShaverEmployee.GetXElement("ShaverEmployee"));
			if (Drawing != null)
				element.Add(Drawing.GetXElement("Drawing"));
			if (MakerEmployee != null)
				element.Add(MakerEmployee.GetXElement("MakerEmployee"));

			CustomFillXElement(element);
			return element;
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


	// The viewmodel for Shipment
	public partial class ShipmentViewModel : EntityViewModel<Rti.Model.Domain.Shipment, ShipmentViewModel>
	{
		// Конструктор для маппинга
		public ShipmentViewModel() { }

        public ShipmentViewModel(Rti.Model.Domain.Shipment entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private Int32 _sortOrder;
		private DateTime _date;
		private Boolean _isReplace;
		private Boolean _isAddition;
		private String _tripTicket;
		private String _authorityLetter;
		private Int32? _exemplar;
		private Int32? _placeCount;
		private String _recipientResponsible;
		private String _deliveryResponsible;
		private Decimal? _deliverySum;
		private Boolean _isDeleted;
		private RequestViewModel _request;
		private ContragentViewModel _recipient;
		private PaymentViewModel _payment;
		private DriverViewModel _driver;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public DateTime Date { get { return _date; } set { if (Equals(_date, value)) return; _date = value; OnPropertyChanged("Date"); } }
		public Boolean IsReplace { get { return _isReplace; } set { if (Equals(_isReplace, value)) return; _isReplace = value; OnPropertyChanged("IsReplace"); } }
		public Boolean IsAddition { get { return _isAddition; } set { if (Equals(_isAddition, value)) return; _isAddition = value; OnPropertyChanged("IsAddition"); } }
		public String TripTicket { get { return _tripTicket; } set { if (Equals(_tripTicket, value)) return; _tripTicket = value; OnPropertyChanged("TripTicket"); } }
		public String AuthorityLetter { get { return _authorityLetter; } set { if (Equals(_authorityLetter, value)) return; _authorityLetter = value; OnPropertyChanged("AuthorityLetter"); } }
		public Int32? Exemplar { get { return _exemplar; } set { if (Equals(_exemplar, value)) return; _exemplar = value; OnPropertyChanged("Exemplar"); } }
		public Int32? PlaceCount { get { return _placeCount; } set { if (Equals(_placeCount, value)) return; _placeCount = value; OnPropertyChanged("PlaceCount"); } }
		public String RecipientResponsible { get { return _recipientResponsible; } set { if (Equals(_recipientResponsible, value)) return; _recipientResponsible = value; OnPropertyChanged("RecipientResponsible"); } }
		public String DeliveryResponsible { get { return _deliveryResponsible; } set { if (Equals(_deliveryResponsible, value)) return; _deliveryResponsible = value; OnPropertyChanged("DeliveryResponsible"); } }
		public Decimal? DeliverySum { get { return _deliverySum; } set { if (Equals(_deliverySum, value)) return; _deliverySum = value; OnPropertyChanged("DeliverySum"); } }
		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged("IsDeleted"); } }
		public RequestViewModel Request { get { return _request; } set { _request = value; OnPropertyChanged("Request"); } }
		public ContragentViewModel Recipient { get { return _recipient; } set { _recipient = value; OnPropertyChanged("Recipient"); } }
		public PaymentViewModel Payment { get { return _payment; } set { _payment = value; OnPropertyChanged("Payment"); } }
		public DriverViewModel Driver { get { return _driver; } set { _driver = value; OnPropertyChanged("Driver"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.Date = Date; 
			Entity.IsReplace = IsReplace; 
			Entity.IsAddition = IsAddition; 
			Entity.TripTicket = TripTicket; 
			Entity.AuthorityLetter = AuthorityLetter; 
			Entity.Exemplar = Exemplar; 
			Entity.PlaceCount = PlaceCount; 
			Entity.RecipientResponsible = RecipientResponsible; 
			Entity.DeliveryResponsible = DeliveryResponsible; 
			Entity.DeliverySum = DeliverySum; 
			Entity.IsDeleted = IsDeleted; 
			Entity.Request = Request == null ? null : Request.Entity; 
			Entity.Recipient = Recipient == null ? null : Recipient.Entity; 
			Entity.Payment = Payment == null ? null : Payment.Entity; 
			Entity.Driver = Driver == null ? null : Driver.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Date = Entity.Date; 
			IsReplace = Entity.IsReplace; 
			IsAddition = Entity.IsAddition; 
			TripTicket = Entity.TripTicket; 
			AuthorityLetter = Entity.AuthorityLetter; 
			Exemplar = Entity.Exemplar; 
			PlaceCount = Entity.PlaceCount; 
			RecipientResponsible = Entity.RecipientResponsible; 
			DeliveryResponsible = Entity.DeliveryResponsible; 
			DeliverySum = Entity.DeliverySum; 
			IsDeleted = Entity.IsDeleted; 
			Request = Entity.Request == null ? null : new RequestViewModel(Entity.Request, RepositoryFactory); 
			Recipient = Entity.Recipient == null ? null : new ContragentViewModel(Entity.Recipient, RepositoryFactory); 
			Payment = Entity.Payment == null ? null : new PaymentViewModel(Entity.Payment, RepositoryFactory); 
			Driver = Entity.Driver == null ? null : new DriverViewModel(Entity.Driver, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(ShipmentViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Date = source.Date;
			IsReplace = source.IsReplace;
			IsAddition = source.IsAddition;
			TripTicket = source.TripTicket;
			AuthorityLetter = source.AuthorityLetter;
			Exemplar = source.Exemplar;
			PlaceCount = source.PlaceCount;
			RecipientResponsible = source.RecipientResponsible;
			DeliveryResponsible = source.DeliveryResponsible;
			DeliverySum = source.DeliverySum;
			IsDeleted = source.IsDeleted;
			Request = source.Request;
			Recipient = source.Recipient;
			Payment = source.Payment;
			Driver = source.Driver;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ShipmentViewModel Clone()
		{
			var copy = new ShipmentViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			element.Add(new XAttribute("Date", Date));
			element.Add(new XAttribute("IsReplace", IsReplace));
			element.Add(new XAttribute("IsAddition", IsAddition));
			if (TripTicket != null)
				element.Add(new XAttribute("TripTicket", TripTicket));
			if (AuthorityLetter != null)
				element.Add(new XAttribute("AuthorityLetter", AuthorityLetter));
			if (Exemplar != null)
				element.Add(new XAttribute("Exemplar", Exemplar));
			if (PlaceCount != null)
				element.Add(new XAttribute("PlaceCount", PlaceCount));
			if (RecipientResponsible != null)
				element.Add(new XAttribute("RecipientResponsible", RecipientResponsible));
			if (DeliveryResponsible != null)
				element.Add(new XAttribute("DeliveryResponsible", DeliveryResponsible));
			if (DeliverySum != null)
				element.Add(new XAttribute("DeliverySum", DeliverySum));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Request != null)
				element.Add(Request.GetXElement("Request"));
			if (Recipient != null)
				element.Add(Recipient.GetXElement("Recipient"));
			if (Payment != null)
				element.Add(Payment.GetXElement("Payment"));
			if (Driver != null)
				element.Add(Driver.GetXElement("Driver"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ShipmentViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ShipmentViewModel) obj);
        }
	}


	// The viewmodel for ShipmentItem
	public partial class ShipmentItemViewModel : EntityViewModel<Rti.Model.Domain.ShipmentItem, ShipmentItemViewModel>
	{
		// Конструктор для маппинга
		public ShipmentItemViewModel() { }

        public ShipmentItemViewModel(Rti.Model.Domain.ShipmentItem entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private Int32 _sortOrder;
		private Int32 _count;
		private Decimal _price;
		private Double _ndsPercent;
		private String _packType;
		private Int32? _countInPlace;
		private Int32? _countOfPlaces;
		private String _batchNumbers;
		private ShipmentViewModel _shipment;
		private RequestDetailViewModel _requestDetail;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public Int32 Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }
		public Decimal Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }
		public Double NdsPercent { get { return _ndsPercent; } set { if (Equals(_ndsPercent, value)) return; _ndsPercent = value; OnPropertyChanged("NdsPercent"); } }
		public String PackType { get { return _packType; } set { if (Equals(_packType, value)) return; _packType = value; OnPropertyChanged("PackType"); } }
		public Int32? CountInPlace { get { return _countInPlace; } set { if (Equals(_countInPlace, value)) return; _countInPlace = value; OnPropertyChanged("CountInPlace"); } }
		public Int32? CountOfPlaces { get { return _countOfPlaces; } set { if (Equals(_countOfPlaces, value)) return; _countOfPlaces = value; OnPropertyChanged("CountOfPlaces"); } }
		public String BatchNumbers { get { return _batchNumbers; } set { if (Equals(_batchNumbers, value)) return; _batchNumbers = value; OnPropertyChanged("BatchNumbers"); } }
		public ShipmentViewModel Shipment { get { return _shipment; } set { _shipment = value; OnPropertyChanged("Shipment"); } }
		public RequestDetailViewModel RequestDetail { get { return _requestDetail; } set { _requestDetail = value; OnPropertyChanged("RequestDetail"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.Count = Count; 
			Entity.Price = Price; 
			Entity.NdsPercent = NdsPercent; 
			Entity.PackType = PackType; 
			Entity.CountInPlace = CountInPlace; 
			Entity.CountOfPlaces = CountOfPlaces; 
			Entity.BatchNumbers = BatchNumbers; 
			Entity.Shipment = Shipment == null ? null : Shipment.Entity; 
			Entity.RequestDetail = RequestDetail == null ? null : RequestDetail.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			Count = Entity.Count; 
			Price = Entity.Price; 
			NdsPercent = Entity.NdsPercent; 
			PackType = Entity.PackType; 
			CountInPlace = Entity.CountInPlace; 
			CountOfPlaces = Entity.CountOfPlaces; 
			BatchNumbers = Entity.BatchNumbers; 
			Shipment = Entity.Shipment == null ? null : new ShipmentViewModel(Entity.Shipment, RepositoryFactory); 
			RequestDetail = Entity.RequestDetail == null ? null : new RequestDetailViewModel(Entity.RequestDetail, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(ShipmentItemViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			Count = source.Count;
			Price = source.Price;
			NdsPercent = source.NdsPercent;
			PackType = source.PackType;
			CountInPlace = source.CountInPlace;
			CountOfPlaces = source.CountOfPlaces;
			BatchNumbers = source.BatchNumbers;
			Shipment = source.Shipment;
			RequestDetail = source.RequestDetail;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ShipmentItemViewModel Clone()
		{
			var copy = new ShipmentItemViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			element.Add(new XAttribute("Count", Count));
			element.Add(new XAttribute("Price", Price));
			element.Add(new XAttribute("NdsPercent", NdsPercent));
			if (PackType != null)
				element.Add(new XAttribute("PackType", PackType));
			if (CountInPlace != null)
				element.Add(new XAttribute("CountInPlace", CountInPlace));
			if (CountOfPlaces != null)
				element.Add(new XAttribute("CountOfPlaces", CountOfPlaces));
			if (BatchNumbers != null)
				element.Add(new XAttribute("BatchNumbers", BatchNumbers));
			if (Shipment != null)
				element.Add(Shipment.GetXElement("Shipment"));
			if (RequestDetail != null)
				element.Add(RequestDetail.GetXElement("RequestDetail"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ShipmentItemViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ShipmentItemViewModel) obj);
        }
	}


	// The viewmodel for ShipmentItemWorkItem
	public partial class ShipmentItemWorkItemViewModel : EntityViewModel<Rti.Model.Domain.ShipmentItemWorkItem, ShipmentItemWorkItemViewModel>
	{
		// Конструктор для маппинга
		public ShipmentItemWorkItemViewModel() { }

        public ShipmentItemWorkItemViewModel(Rti.Model.Domain.ShipmentItemWorkItem entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private Int32 _count;
		private ShipmentItemViewModel _shipmentItem;
		private WorkItemViewModel _workItem;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }
		public ShipmentItemViewModel ShipmentItem { get { return _shipmentItem; } set { _shipmentItem = value; OnPropertyChanged("ShipmentItem"); } }
		public WorkItemViewModel WorkItem { get { return _workItem; } set { _workItem = value; OnPropertyChanged("WorkItem"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.Count = Count; 
			Entity.ShipmentItem = ShipmentItem == null ? null : ShipmentItem.Entity; 
			Entity.WorkItem = WorkItem == null ? null : WorkItem.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			Count = Entity.Count; 
			ShipmentItem = Entity.ShipmentItem == null ? null : new ShipmentItemViewModel(Entity.ShipmentItem, RepositoryFactory); 
			WorkItem = Entity.WorkItem == null ? null : new WorkItemViewModel(Entity.WorkItem, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(ShipmentItemWorkItemViewModel source)
		{
			IsMapping = true;
			Count = source.Count;
			ShipmentItem = source.ShipmentItem;
			WorkItem = source.WorkItem;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ShipmentItemWorkItemViewModel Clone()
		{
			var copy = new ShipmentItemWorkItemViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("Count", Count));
			if (ShipmentItem != null)
				element.Add(ShipmentItem.GetXElement("ShipmentItem"));
			if (WorkItem != null)
				element.Add(WorkItem.GetXElement("WorkItem"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(ShipmentItemWorkItemViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ShipmentItemWorkItemViewModel) obj);
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
		private RequestViewModel _request;
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
		public RequestViewModel Request { get { return _request; } set { _request = value; OnPropertyChanged("Request"); } }
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
			Entity.Request = Request == null ? null : Request.Entity; 
			Entity.Equipment = Equipment == null ? null : Equipment.Entity; 
			Entity.Employee = Employee == null ? null : Employee.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
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
			Request = Entity.Request == null ? null : new RequestViewModel(Entity.Request, RepositoryFactory); 
			Equipment = Entity.Equipment == null ? null : new EquipmentViewModel(Entity.Equipment, RepositoryFactory); 
			Employee = Entity.Employee == null ? null : new EmployeeViewModel(Entity.Employee, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(ShippedProductRecordViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			PayDocNumber = source.PayDocNumber;
			PayDocDate = source.PayDocDate;
			AdvanceSum = source.AdvanceSum;
			ShipmentDate = source.ShipmentDate;
			TaxInvoiceNumber = source.TaxInvoiceNumber;
			Sum = source.Sum;
			EquipmentSum = source.EquipmentSum;
			Note = source.Note;
			Request = source.Request;
			Equipment = source.Equipment;
			Employee = source.Employee;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ShippedProductRecordViewModel Clone()
		{
			var copy = new ShippedProductRecordViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (PayDocNumber != null)
				element.Add(new XAttribute("PayDocNumber", PayDocNumber));
			element.Add(new XAttribute("PayDocDate", PayDocDate));
			if (AdvanceSum != null)
				element.Add(new XAttribute("AdvanceSum", AdvanceSum));
			element.Add(new XAttribute("ShipmentDate", ShipmentDate));
			if (TaxInvoiceNumber != null)
				element.Add(new XAttribute("TaxInvoiceNumber", TaxInvoiceNumber));
			element.Add(new XAttribute("Sum", Sum));
			if (EquipmentSum != null)
				element.Add(new XAttribute("EquipmentSum", EquipmentSum));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			if (Request != null)
				element.Add(Request.GetXElement("Request"));
			if (Equipment != null)
				element.Add(Equipment.GetXElement("Equipment"));
			if (Employee != null)
				element.Add(Employee.GetXElement("Employee"));

			CustomFillXElement(element);
			return element;
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
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			OrderDate = Entity.OrderDate; 
			Count = Entity.Count; 
			IsDeleted = Entity.IsDeleted; 
			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(ShippingOrderRecordViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			OrderDate = source.OrderDate;
			Count = source.Count;
			IsDeleted = source.IsDeleted;
			Customer = source.Customer;
			Drawing = source.Drawing;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override ShippingOrderRecordViewModel Clone()
		{
			var copy = new ShippingOrderRecordViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("SortOrder", SortOrder));
			element.Add(new XAttribute("OrderDate", OrderDate));
			element.Add(new XAttribute("Count", Count));
			element.Add(new XAttribute("IsDeleted", IsDeleted));
			if (Customer != null)
				element.Add(Customer.GetXElement("Customer"));
			if (Drawing != null)
				element.Add(Drawing.GetXElement("Drawing"));

			CustomFillXElement(element);
			return element;
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


	// The viewmodel for WorkItem
	public partial class WorkItemViewModel : EntityViewModel<Rti.Model.Domain.WorkItem, WorkItemViewModel>
	{
		// Конструктор для маппинга
		public WorkItemViewModel() { }

        public WorkItemViewModel(Rti.Model.Domain.WorkItem entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private DateTime _workDate;
		private Int32 _sortOrder;
		private Int32? _requestCount;
		private Int32? _taskCount;
		private Int32? _doneCount;
		private Int32? _rejectedCount;
		private String _note;
		private Boolean _isParallel;
		private String _batchNumber;
		private DrawingViewModel _drawing;
		private EmployeeViewModel _employee;
		private DrawingFlowsheetMachineViewModel _flowsheetMachine;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public DateTime WorkDate { get { return _workDate; } set { if (Equals(_workDate, value)) return; _workDate = value; OnPropertyChanged("WorkDate"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public Int32? RequestCount { get { return _requestCount; } set { if (Equals(_requestCount, value)) return; _requestCount = value; OnPropertyChanged("RequestCount"); } }
		public Int32? TaskCount { get { return _taskCount; } set { if (Equals(_taskCount, value)) return; _taskCount = value; OnPropertyChanged("TaskCount"); } }
		public Int32? DoneCount { get { return _doneCount; } set { if (Equals(_doneCount, value)) return; _doneCount = value; OnPropertyChanged("DoneCount"); } }
		public Int32? RejectedCount { get { return _rejectedCount; } set { if (Equals(_rejectedCount, value)) return; _rejectedCount = value; OnPropertyChanged("RejectedCount"); } }
		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }
		public Boolean IsParallel { get { return _isParallel; } set { if (Equals(_isParallel, value)) return; _isParallel = value; OnPropertyChanged("IsParallel"); } }
		public String BatchNumber { get { return _batchNumber; } set { if (Equals(_batchNumber, value)) return; _batchNumber = value; OnPropertyChanged("BatchNumber"); } }
		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }
		public EmployeeViewModel Employee { get { return _employee; } set { _employee = value; OnPropertyChanged("Employee"); } }
		public DrawingFlowsheetMachineViewModel FlowsheetMachine { get { return _flowsheetMachine; } set { _flowsheetMachine = value; OnPropertyChanged("FlowsheetMachine"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.WorkDate = WorkDate; 
			Entity.SortOrder = SortOrder; 
			Entity.RequestCount = RequestCount; 
			Entity.TaskCount = TaskCount; 
			Entity.DoneCount = DoneCount; 
			Entity.RejectedCount = RejectedCount; 
			Entity.Note = Note; 
			Entity.IsParallel = IsParallel; 
			Entity.BatchNumber = BatchNumber; 
			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 
			Entity.Employee = Employee == null ? null : Employee.Entity; 
			Entity.FlowsheetMachine = FlowsheetMachine == null ? null : FlowsheetMachine.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			WorkDate = Entity.WorkDate; 
			SortOrder = Entity.SortOrder; 
			RequestCount = Entity.RequestCount; 
			TaskCount = Entity.TaskCount; 
			DoneCount = Entity.DoneCount; 
			RejectedCount = Entity.RejectedCount; 
			Note = Entity.Note; 
			IsParallel = Entity.IsParallel; 
			BatchNumber = Entity.BatchNumber; 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			Employee = Entity.Employee == null ? null : new EmployeeViewModel(Entity.Employee, RepositoryFactory); 
			FlowsheetMachine = Entity.FlowsheetMachine == null ? null : new DrawingFlowsheetMachineViewModel(Entity.FlowsheetMachine, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(WorkItemViewModel source)
		{
			IsMapping = true;
			WorkDate = source.WorkDate;
			SortOrder = source.SortOrder;
			RequestCount = source.RequestCount;
			TaskCount = source.TaskCount;
			DoneCount = source.DoneCount;
			RejectedCount = source.RejectedCount;
			Note = source.Note;
			IsParallel = source.IsParallel;
			BatchNumber = source.BatchNumber;
			Drawing = source.Drawing;
			Employee = source.Employee;
			FlowsheetMachine = source.FlowsheetMachine;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override WorkItemViewModel Clone()
		{
			var copy = new WorkItemViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("WorkDate", WorkDate));
			element.Add(new XAttribute("SortOrder", SortOrder));
			if (RequestCount != null)
				element.Add(new XAttribute("RequestCount", RequestCount));
			if (TaskCount != null)
				element.Add(new XAttribute("TaskCount", TaskCount));
			if (DoneCount != null)
				element.Add(new XAttribute("DoneCount", DoneCount));
			if (RejectedCount != null)
				element.Add(new XAttribute("RejectedCount", RejectedCount));
			if (Note != null)
				element.Add(new XAttribute("Note", Note));
			element.Add(new XAttribute("IsParallel", IsParallel));
			if (BatchNumber != null)
				element.Add(new XAttribute("BatchNumber", BatchNumber));
			if (Drawing != null)
				element.Add(Drawing.GetXElement("Drawing"));
			if (Employee != null)
				element.Add(Employee.GetXElement("Employee"));
			if (FlowsheetMachine != null)
				element.Add(FlowsheetMachine.GetXElement("FlowsheetMachine"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(WorkItemViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((WorkItemViewModel) obj);
        }
	}


	// The viewmodel for WorkItemPackage
	public partial class WorkItemPackageViewModel : EntityViewModel<Rti.Model.Domain.WorkItemPackage, WorkItemPackageViewModel>
	{
		// Конструктор для маппинга
		public WorkItemPackageViewModel() { }

        public WorkItemPackageViewModel(Rti.Model.Domain.WorkItemPackage entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private DateTime _date;
		private String _block;
		private EmployeeViewModel _employee;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public DateTime Date { get { return _date; } set { if (Equals(_date, value)) return; _date = value; OnPropertyChanged("Date"); } }
		public String Block { get { return _block; } set { if (Equals(_block, value)) return; _block = value; OnPropertyChanged("Block"); } }
		public EmployeeViewModel Employee { get { return _employee; } set { _employee = value; OnPropertyChanged("Employee"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.Date = Date; 
			Entity.Block = Block; 
			Entity.Employee = Employee == null ? null : Employee.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			Date = Entity.Date; 
			Block = Entity.Block; 
			Employee = Entity.Employee == null ? null : new EmployeeViewModel(Entity.Employee, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(WorkItemPackageViewModel source)
		{
			IsMapping = true;
			Date = source.Date;
			Block = source.Block;
			Employee = source.Employee;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override WorkItemPackageViewModel Clone()
		{
			var copy = new WorkItemPackageViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("Date", Date));
			if (Block != null)
				element.Add(new XAttribute("Block", Block));
			if (Employee != null)
				element.Add(Employee.GetXElement("Employee"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(WorkItemPackageViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((WorkItemPackageViewModel) obj);
        }
	}


	// The viewmodel for WorkItemPackageMachine
	public partial class WorkItemPackageMachineViewModel : EntityViewModel<Rti.Model.Domain.WorkItemPackageMachine, WorkItemPackageMachineViewModel>
	{
		// Конструктор для маппинга
		public WorkItemPackageMachineViewModel() { }

        public WorkItemPackageMachineViewModel(Rti.Model.Domain.WorkItemPackageMachine entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private Int32 _fullWorkingTime;
		private Int32 _packageWorkingTime;
		private WorkItemPackageViewModel _workItemPackage;
		private DrawingFlowsheetMachineViewModel _flowsheetMachine;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 FullWorkingTime { get { return _fullWorkingTime; } set { if (Equals(_fullWorkingTime, value)) return; _fullWorkingTime = value; OnPropertyChanged("FullWorkingTime"); } }
		public Int32 PackageWorkingTime { get { return _packageWorkingTime; } set { if (Equals(_packageWorkingTime, value)) return; _packageWorkingTime = value; OnPropertyChanged("PackageWorkingTime"); } }
		public WorkItemPackageViewModel WorkItemPackage { get { return _workItemPackage; } set { _workItemPackage = value; OnPropertyChanged("WorkItemPackage"); } }
		public DrawingFlowsheetMachineViewModel FlowsheetMachine { get { return _flowsheetMachine; } set { _flowsheetMachine = value; OnPropertyChanged("FlowsheetMachine"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.FullWorkingTime = FullWorkingTime; 
			Entity.PackageWorkingTime = PackageWorkingTime; 
			Entity.WorkItemPackage = WorkItemPackage == null ? null : WorkItemPackage.Entity; 
			Entity.FlowsheetMachine = FlowsheetMachine == null ? null : FlowsheetMachine.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			FullWorkingTime = Entity.FullWorkingTime; 
			PackageWorkingTime = Entity.PackageWorkingTime; 
			WorkItemPackage = Entity.WorkItemPackage == null ? null : new WorkItemPackageViewModel(Entity.WorkItemPackage, RepositoryFactory); 
			FlowsheetMachine = Entity.FlowsheetMachine == null ? null : new DrawingFlowsheetMachineViewModel(Entity.FlowsheetMachine, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(WorkItemPackageMachineViewModel source)
		{
			IsMapping = true;
			FullWorkingTime = source.FullWorkingTime;
			PackageWorkingTime = source.PackageWorkingTime;
			WorkItemPackage = source.WorkItemPackage;
			FlowsheetMachine = source.FlowsheetMachine;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override WorkItemPackageMachineViewModel Clone()
		{
			var copy = new WorkItemPackageMachineViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			element.Add(new XAttribute("FullWorkingTime", FullWorkingTime));
			element.Add(new XAttribute("PackageWorkingTime", PackageWorkingTime));
			if (WorkItemPackage != null)
				element.Add(WorkItemPackage.GetXElement("WorkItemPackage"));
			if (FlowsheetMachine != null)
				element.Add(FlowsheetMachine.GetXElement("FlowsheetMachine"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(WorkItemPackageMachineViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((WorkItemPackageMachineViewModel) obj);
        }
	}


	// The viewmodel for WorkItemRequestDetail
	public partial class WorkItemRequestDetailViewModel : EntityViewModel<Rti.Model.Domain.WorkItemRequestDetail, WorkItemRequestDetailViewModel>
	{
		// Конструктор для маппинга
		public WorkItemRequestDetailViewModel() { }

        public WorkItemRequestDetailViewModel(Rti.Model.Domain.WorkItemRequestDetail entity, IRepositoryFactory repositoryFactory) : base(entity, repositoryFactory) { }

		private Int32 _id;
		private Int32? _sortOrder;
		private Int32 _doneCount;
		private WorkItemViewModel _workItem;
		private RequestDetailViewModel _requestDetail;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32? SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public Int32 DoneCount { get { return _doneCount; } set { if (Equals(_doneCount, value)) return; _doneCount = value; OnPropertyChanged("DoneCount"); } }
		public WorkItemViewModel WorkItem { get { return _workItem; } set { _workItem = value; OnPropertyChanged("WorkItem"); } }
		public RequestDetailViewModel RequestDetail { get { return _requestDetail; } set { _requestDetail = value; OnPropertyChanged("RequestDetail"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.DoneCount = DoneCount; 
			Entity.WorkItem = WorkItem == null ? null : WorkItem.Entity; 
			Entity.RequestDetail = RequestDetail == null ? null : RequestDetail.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{
			IsMapping = true;
			Id = Entity.Id; 
			SortOrder = Entity.SortOrder; 
			DoneCount = Entity.DoneCount; 
			WorkItem = Entity.WorkItem == null ? null : new WorkItemViewModel(Entity.WorkItem, RepositoryFactory); 
			RequestDetail = Entity.RequestDetail == null ? null : new RequestDetailViewModel(Entity.RequestDetail, RepositoryFactory); 
			IsMapping = false;
		}

		public override void CopyFrom(WorkItemRequestDetailViewModel source)
		{
			IsMapping = true;
			SortOrder = source.SortOrder;
			DoneCount = source.DoneCount;
			WorkItem = source.WorkItem;
			RequestDetail = source.RequestDetail;
			CustomCopyFrom(source);
			IsMapping = false;
		}

		public override WorkItemRequestDetailViewModel Clone()
		{
			var copy = new WorkItemRequestDetailViewModel(null, RepositoryFactory);
			copy.CopyFrom(this);
			return copy;
		}

		public XElement GetXElement(string name)
		{
			var element = new XElement(name);
			element.Add(new XAttribute("Id", Id));
			if (SortOrder != null)
				element.Add(new XAttribute("SortOrder", SortOrder));
			element.Add(new XAttribute("DoneCount", DoneCount));
			if (WorkItem != null)
				element.Add(WorkItem.GetXElement("WorkItem"));
			if (RequestDetail != null)
				element.Add(RequestDetail.GetXElement("RequestDetail"));

			CustomFillXElement(element);
			return element;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(WorkItemRequestDetailViewModel other) { return IsNewEntity ? ReferenceEquals(this, other) : _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((WorkItemRequestDetailViewModel) obj);
        }
	}


}
