











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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(AdditionalInfoViewModel other) { return _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((AdditionalInfoViewModel) obj);
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Double KTr { get { return _kTr; } set { if (Equals(_kTr, value)) return; _kTr = value; OnPropertyChanged(); } }

		public Double KEsn { get { return _kEsn; } set { if (Equals(_kEsn, value)) return; _kEsn = value; OnPropertyChanged(); } }

		public Double KObCeh { get { return _kObCeh; } set { if (Equals(_kObCeh, value)) return; _kObCeh = value; OnPropertyChanged(); } }

		public Double KObPr { get { return _kObPr; } set { if (Equals(_kObPr, value)) return; _kObPr = value; OnPropertyChanged(); } }

		public Double KEl { get { return _kEl; } set { if (Equals(_kEl, value)) return; _kEl = value; OnPropertyChanged(); } }

		public Double KNep { get { return _kNep; } set { if (Equals(_kNep, value)) return; _kNep = value; OnPropertyChanged(); } }

		public Double KRen { get { return _kRen; } set { if (Equals(_kRen, value)) return; _kRen = value; OnPropertyChanged(); } }

		public Double Nds { get { return _nds; } set { if (Equals(_nds, value)) return; _nds = value; OnPropertyChanged(); } }

		public Double KSt { get { return _kSt; } set { if (Equals(_kSt, value)) return; _kSt = value; OnPropertyChanged(); } }

		public DateTime DateFrom { get { return _dateFrom; } set { if (Equals(_dateFrom, value)) return; _dateFrom = value; OnPropertyChanged(); } }

		public DateTime DateTo { get { return _dateTo; } set { if (Equals(_dateTo, value)) return; _dateTo = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(ConstantViewModel other) { return _id == other._id; }
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

		private Int32 _type;

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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public Int32 Type { get { return _type; } set { if (Equals(_type, value)) return; _type = value; OnPropertyChanged(); } }

		public String Address { get { return _address; } set { if (Equals(_address, value)) return; _address = value; OnPropertyChanged(); } }

		public String Director { get { return _director; } set { if (Equals(_director, value)) return; _director = value; OnPropertyChanged(); } }

		public String Trustee { get { return _trustee; } set { if (Equals(_trustee, value)) return; _trustee = value; OnPropertyChanged(); } }

		public String Phone { get { return _phone; } set { if (Equals(_phone, value)) return; _phone = value; OnPropertyChanged(); } }

		public String Grounding { get { return _grounding; } set { if (Equals(_grounding, value)) return; _grounding = value; OnPropertyChanged(); } }

		public String Inn { get { return _inn; } set { if (Equals(_inn, value)) return; _inn = value; OnPropertyChanged(); } }

		public String Kpp { get { return _kpp; } set { if (Equals(_kpp, value)) return; _kpp = value; OnPropertyChanged(); } }

		public String Account { get { return _account; } set { if (Equals(_account, value)) return; _account = value; OnPropertyChanged(); } }

		public String CorrAccount { get { return _corrAccount; } set { if (Equals(_corrAccount, value)) return; _corrAccount = value; OnPropertyChanged(); } }

		public String Okved { get { return _okved; } set { if (Equals(_okved, value)) return; _okved = value; OnPropertyChanged(); } }

		public String Okato { get { return _okato; } set { if (Equals(_okato, value)) return; _okato = value; OnPropertyChanged(); } }

		public String Okpo { get { return _okpo; } set { if (Equals(_okpo, value)) return; _okpo = value; OnPropertyChanged(); } }

		public String Ogrn { get { return _ogrn; } set { if (Equals(_ogrn, value)) return; _ogrn = value; OnPropertyChanged(); } }

		public String Bik { get { return _bik; } set { if (Equals(_bik, value)) return; _bik = value; OnPropertyChanged(); } }

		public String Bank { get { return _bank; } set { if (Equals(_bank, value)) return; _bank = value; OnPropertyChanged(); } }

		public String Email { get { return _email; } set { if (Equals(_email, value)) return; _email = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Type = Type; 

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

			Type = Entity.Type; 

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

			target.Type = Type; 

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
        protected bool Equals(ContragentViewModel other) { return _id == other._id; }
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(DetailViewModel other) { return _id == other._id; }
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

		private String _name;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.Name = Name; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			Name = Entity.Name; 

		}

		public override void CopyTo(DrawingViewModel target)
		{

			target.Name = Name; 

		}

		public override DrawingViewModel Clone()
		{
			var copy = new DrawingViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(DrawingViewModel other) { return _id == other._id; }
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String CarModel { get { return _carModel; } set { if (Equals(_carModel, value)) return; _carModel = value; OnPropertyChanged(); } }

		public String Number { get { return _number; } set { if (Equals(_number, value)) return; _number = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String Document { get { return _document; } set { if (Equals(_document, value)) return; _document = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(DriverViewModel other) { return _id == other._id; }
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Code { get { return _code; } set { if (Equals(_code, value)) return; _code = value; OnPropertyChanged(); } }

		public String FullName { get { return _fullName; } set { if (Equals(_fullName, value)) return; _fullName = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }

		public JobViewModel Job { get { return _job; } set { _job = value; OnPropertyChanged(); } }


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
        protected bool Equals(EmployeeViewModel other) { return _id == other._id; }
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

		private Int32 _existance;

		private Int32? _formCount;

		private Int32? _slotCount;

		private Int32? _output;

		private String _note;

		private Boolean _isDeleted;

		private GroupViewModel _group;

		private DrawingViewModel _drawing;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public Int32 Existance { get { return _existance; } set { if (Equals(_existance, value)) return; _existance = value; OnPropertyChanged(); } }

		public Int32? FormCount { get { return _formCount; } set { if (Equals(_formCount, value)) return; _formCount = value; OnPropertyChanged(); } }

		public Int32? SlotCount { get { return _slotCount; } set { if (Equals(_slotCount, value)) return; _slotCount = value; OnPropertyChanged(); } }

		public Int32? Output { get { return _output; } set { if (Equals(_output, value)) return; _output = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }

		public GroupViewModel Group { get { return _group; } set { _group = value; OnPropertyChanged(); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged(); } }


		protected override void MapPropertiesToEntity()
		{

			Entity.SortOrder = SortOrder; 

			Entity.Name = Name; 

			Entity.Existance = Existance; 

			Entity.FormCount = FormCount; 

			Entity.SlotCount = SlotCount; 

			Entity.Output = Output; 

			Entity.Note = Note; 

			Entity.IsDeleted = IsDeleted; 

			Entity.Group = Group == null ? null : Group.Entity; 

			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 

		}

		protected override void MapPropertiesFromEntity()
		{

			Id = Entity.Id; 

			SortOrder = Entity.SortOrder; 

			Name = Entity.Name; 

			Existance = Entity.Existance; 

			FormCount = Entity.FormCount; 

			SlotCount = Entity.SlotCount; 

			Output = Entity.Output; 

			Note = Entity.Note; 

			IsDeleted = Entity.IsDeleted; 

			Group = Entity.Group == null ? null : new GroupViewModel(Entity.Group, RepositoryFactory); 

			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 

		}

		public override void CopyTo(EquipmentViewModel target)
		{

			target.SortOrder = SortOrder; 

			target.Name = Name; 

			target.Existance = Existance; 

			target.FormCount = FormCount; 

			target.SlotCount = SlotCount; 

			target.Output = Output; 

			target.Note = Note; 

			target.IsDeleted = IsDeleted; 

			target.Group = Group; 

			target.Drawing = Drawing; 

		}

		public override EquipmentViewModel Clone()
		{
			var copy = new EquipmentViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(EquipmentViewModel other) { return _id == other._id; }
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(GroupViewModel other) { return _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((GroupViewModel) obj);
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String Login { get { return _login; } set { if (Equals(_login, value)) return; _login = value; OnPropertyChanged(); } }

		public String Password { get { return _password; } set { if (Equals(_password, value)) return; _password = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(JobViewModel other) { return _id == other._id; }
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

		private Double? _platePower;

		private Double? _enginePower;

		private Double? _totalPower;

		private Double? _powerPrice;

		private Double? _timePrice;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String PlateSize { get { return _plateSize; } set { if (Equals(_plateSize, value)) return; _plateSize = value; OnPropertyChanged(); } }

		public String InvNumber { get { return _invNumber; } set { if (Equals(_invNumber, value)) return; _invNumber = value; OnPropertyChanged(); } }

		public Int32? PlateCount { get { return _plateCount; } set { if (Equals(_plateCount, value)) return; _plateCount = value; OnPropertyChanged(); } }

		public Double? PlatePower { get { return _platePower; } set { if (Equals(_platePower, value)) return; _platePower = value; OnPropertyChanged(); } }

		public Double? EnginePower { get { return _enginePower; } set { if (Equals(_enginePower, value)) return; _enginePower = value; OnPropertyChanged(); } }

		public Double? TotalPower { get { return _totalPower; } set { if (Equals(_totalPower, value)) return; _totalPower = value; OnPropertyChanged(); } }

		public Double? PowerPrice { get { return _powerPrice; } set { if (Equals(_powerPrice, value)) return; _powerPrice = value; OnPropertyChanged(); } }

		public Double? TimePrice { get { return _timePrice; } set { if (Equals(_timePrice, value)) return; _timePrice = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(MachineViewModel other) { return _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MachineViewModel) obj);
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

		private Double? _price;

		private String _note;

		private Boolean _isDeleted;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String TechConditions { get { return _techConditions; } set { if (Equals(_techConditions, value)) return; _techConditions = value; OnPropertyChanged(); } }

		public Double? Density { get { return _density; } set { if (Equals(_density, value)) return; _density = value; OnPropertyChanged(); } }

		public Double? Thickness { get { return _thickness; } set { if (Equals(_thickness, value)) return; _thickness = value; OnPropertyChanged(); } }

		public Double? Length { get { return _length; } set { if (Equals(_length, value)) return; _length = value; OnPropertyChanged(); } }

		public Double? Width { get { return _width; } set { if (Equals(_width, value)) return; _width = value; OnPropertyChanged(); } }

		public Double? Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(MaterialViewModel other) { return _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MaterialViewModel) obj);
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String Code { get { return _code; } set { if (Equals(_code, value)) return; _code = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(MeasureUnitViewModel other) { return _id == other._id; }
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }


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
        protected bool Equals(MethodViewModel other) { return _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((MethodViewModel) obj);
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



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 Number { get { return _number; } set { if (Equals(_number, value)) return; _number = value; OnPropertyChanged(); } }

		public DateTime RegDate { get { return _regDate; } set { if (Equals(_regDate, value)) return; _regDate = value; OnPropertyChanged(); } }

		public DateTime? ShipDate { get { return _shipDate; } set { if (Equals(_shipDate, value)) return; _shipDate = value; OnPropertyChanged(); } }

		public Int32? LeadTime { get { return _leadTime; } set { if (Equals(_leadTime, value)) return; _leadTime = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }

		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged(); } }


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
        protected bool Equals(RequestViewModel other) { return _id == other._id; }
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

		private Double _count;

		private Double _price;

		private Double? _calculationPrice;

		private Double _sum;

		private String _note;

		private Boolean _isDeleted;

		private RequestViewModel _request;

		private DrawingViewModel _drawing;

		private GroupViewModel _group;

		private DetailViewModel _detail;

		private MaterialViewModel _material;



		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }

		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }

		public Int32? EquipmentExistance { get { return _equipmentExistance; } set { if (Equals(_equipmentExistance, value)) return; _equipmentExistance = value; OnPropertyChanged(); } }

		public String AdditionalInfo { get { return _additionalInfo; } set { if (Equals(_additionalInfo, value)) return; _additionalInfo = value; OnPropertyChanged(); } }

		public Int32? EquipmentLeadTime { get { return _equipmentLeadTime; } set { if (Equals(_equipmentLeadTime, value)) return; _equipmentLeadTime = value; OnPropertyChanged(); } }

		public Double Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged(); } }

		public Double Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged(); } }

		public Double? CalculationPrice { get { return _calculationPrice; } set { if (Equals(_calculationPrice, value)) return; _calculationPrice = value; OnPropertyChanged(); } }

		public Double Sum { get { return _sum; } set { if (Equals(_sum, value)) return; _sum = value; OnPropertyChanged(); } }

		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }

		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }

		public RequestViewModel Request { get { return _request; } set { _request = value; OnPropertyChanged(); } }

		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged(); } }

		public GroupViewModel Group { get { return _group; } set { _group = value; OnPropertyChanged(); } }

		public DetailViewModel Detail { get { return _detail; } set { _detail = value; OnPropertyChanged(); } }

		public MaterialViewModel Material { get { return _material; } set { _material = value; OnPropertyChanged(); } }


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
        protected bool Equals(RequestDetailViewModel other) { return _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((RequestDetailViewModel) obj);
        }
	}


}
