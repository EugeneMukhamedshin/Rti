﻿using System;
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
		private String _drawing;
		private String _name;
		private Int32 _existance;
		private Int32? _formCount;
		private Int32? _slotCount;
		private Int32? _output;
		private String _note;
		private Boolean _isDeleted;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged(); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged(); } }
		public String Drawing { get { return _drawing; } set { if (Equals(_drawing, value)) return; _drawing = value; OnPropertyChanged(); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged(); } }
		public Int32 Existance { get { return _existance; } set { if (Equals(_existance, value)) return; _existance = value; OnPropertyChanged(); } }
		public Int32? FormCount { get { return _formCount; } set { if (Equals(_formCount, value)) return; _formCount = value; OnPropertyChanged(); } }
		public Int32? SlotCount { get { return _slotCount; } set { if (Equals(_slotCount, value)) return; _slotCount = value; OnPropertyChanged(); } }
		public Int32? Output { get { return _output; } set { if (Equals(_output, value)) return; _output = value; OnPropertyChanged(); } }
		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged(); } }
		public Boolean IsDeleted { get { return _isDeleted; } set { if (Equals(_isDeleted, value)) return; _isDeleted = value; OnPropertyChanged(); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.Drawing = Drawing; 
			Entity.Name = Name; 
			Entity.Existance = Existance; 
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
			Drawing = Entity.Drawing; 
			Name = Entity.Name; 
			Existance = Entity.Existance; 
			FormCount = Entity.FormCount; 
			SlotCount = Entity.SlotCount; 
			Output = Entity.Output; 
			Note = Entity.Note; 
			IsDeleted = Entity.IsDeleted; 
		}

		public override void CopyTo(EquipmentViewModel target)
		{
			target.SortOrder = SortOrder; 
			target.Drawing = Drawing; 
			target.Name = Name; 
			target.Existance = Existance; 
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

}
