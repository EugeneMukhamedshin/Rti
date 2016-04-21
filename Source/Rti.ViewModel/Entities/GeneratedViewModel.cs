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
		private DateTime? _creationDate;
		private Int32 _sortOrder;
		private String _name;
		private String _additionalInfo;
		private String _code;
		private Double? _massWithShruff;
		private Double? _price;
		private Double? _shavingPrice;
		private Double? _calculationPrice;
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
		private EquipmentViewModel _equipment;
		private MethodViewModel _method;
		private ImageViewModel _drawingImage;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public DateTime? CreationDate { get { return _creationDate; } set { if (Equals(_creationDate, value)) return; _creationDate = value; OnPropertyChanged("CreationDate"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }
		public String AdditionalInfo { get { return _additionalInfo; } set { if (Equals(_additionalInfo, value)) return; _additionalInfo = value; OnPropertyChanged("AdditionalInfo"); } }
		public String Code { get { return _code; } set { if (Equals(_code, value)) return; _code = value; OnPropertyChanged("Code"); } }
		public Double? MassWithShruff { get { return _massWithShruff; } set { if (Equals(_massWithShruff, value)) return; _massWithShruff = value; OnPropertyChanged("MassWithShruff"); } }
		public Double? Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }
		public Double? ShavingPrice { get { return _shavingPrice; } set { if (Equals(_shavingPrice, value)) return; _shavingPrice = value; OnPropertyChanged("ShavingPrice"); } }
		public Double? CalculationPrice { get { return _calculationPrice; } set { if (Equals(_calculationPrice, value)) return; _calculationPrice = value; OnPropertyChanged("CalculationPrice"); } }
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
		public EquipmentViewModel Equipment { get { return _equipment; } set { _equipment = value; OnPropertyChanged("Equipment"); } }
		public MethodViewModel Method { get { return _method; } set { _method = value; OnPropertyChanged("Method"); } }
		public ImageViewModel DrawingImage { get { return _drawingImage; } set { _drawingImage = value; OnPropertyChanged("DrawingImage"); } }

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
			Entity.CalculationPrice = CalculationPrice; 
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
			Entity.Equipment = Equipment == null ? null : Equipment.Entity; 
			Entity.Method = Method == null ? null : Method.Entity; 
			Entity.DrawingImage = DrawingImage == null ? null : DrawingImage.Entity; 
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
			CalculationPrice = Entity.CalculationPrice; 
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
			Equipment = Entity.Equipment == null ? null : new EquipmentViewModel(Entity.Equipment, RepositoryFactory); 
			Method = Entity.Method == null ? null : new MethodViewModel(Entity.Method, RepositoryFactory); 
			DrawingImage = Entity.DrawingImage == null ? null : new ImageViewModel(Entity.DrawingImage, RepositoryFactory); 
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
			target.CalculationPrice = CalculationPrice; 
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
			target.Equipment = Equipment; 
			target.Method = Method; 
			target.DrawingImage = DrawingImage; 
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
		private Existance _existanceEnum;
		private Double _square;
		private Int32 _formCount;
		private Int32 _slotCount;
		private Int32 _output;
		private String _note;
		private Boolean _isDeleted;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }
		public Existance ExistanceEnum { get { return _existanceEnum; } set { if (Equals(_existanceEnum, value)) return; _existanceEnum = value; OnPropertyChanged("ExistanceEnum"); } }
		public Double Square { get { return _square; } set { if (Equals(_square, value)) return; _square = value; OnPropertyChanged("Square"); } }
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
        protected bool Equals(EquipmentViewModel other) { return _id == other._id; }
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
		private String _note;
		private DrawingViewModel _drawing;
		private ContragentViewModel _customer;
		private ContragentViewModel _secondaryCustomer;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public String Note { get { return _note; } set { if (Equals(_note, value)) return; _note = value; OnPropertyChanged("Note"); } }
		public DrawingViewModel Drawing { get { return _drawing; } set { _drawing = value; OnPropertyChanged("Drawing"); } }
		public ContragentViewModel Customer { get { return _customer; } set { _customer = value; OnPropertyChanged("Customer"); } }
		public ContragentViewModel SecondaryCustomer { get { return _secondaryCustomer; } set { _secondaryCustomer = value; OnPropertyChanged("SecondaryCustomer"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.Note = Note; 
			Entity.Drawing = Drawing == null ? null : Drawing.Entity; 
			Entity.Customer = Customer == null ? null : Customer.Entity; 
			Entity.SecondaryCustomer = SecondaryCustomer == null ? null : SecondaryCustomer.Entity; 
		}

		protected override void MapPropertiesFromEntity()
		{
			Id = Entity.Id; 
			Note = Entity.Note; 
			Drawing = Entity.Drawing == null ? null : new DrawingViewModel(Entity.Drawing, RepositoryFactory); 
			Customer = Entity.Customer == null ? null : new ContragentViewModel(Entity.Customer, RepositoryFactory); 
			SecondaryCustomer = Entity.SecondaryCustomer == null ? null : new ContragentViewModel(Entity.SecondaryCustomer, RepositoryFactory); 
		}

		public override void CopyTo(FlowsheetViewModel target)
		{
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
        protected bool Equals(FlowsheetViewModel other) { return _id == other._id; }
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
		private Double? _plateTemperature;
		private Double? _cureTime;
		private FlowsheetViewModel _flowsheet;
		private MachineViewModel _machine;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public Double? PlateTemperature { get { return _plateTemperature; } set { if (Equals(_plateTemperature, value)) return; _plateTemperature = value; OnPropertyChanged("PlateTemperature"); } }
		public Double? CureTime { get { return _cureTime; } set { if (Equals(_cureTime, value)) return; _cureTime = value; OnPropertyChanged("CureTime"); } }
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
        protected bool Equals(FlowsheetMachineViewModel other) { return _id == other._id; }
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
		private Double _normTime;
		private FlowsheetViewModel _flowsheet;

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32? SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }
		public String Operation { get { return _operation; } set { if (Equals(_operation, value)) return; _operation = value; OnPropertyChanged("Operation"); } }
		public String Executor { get { return _executor; } set { if (Equals(_executor, value)) return; _executor = value; OnPropertyChanged("Executor"); } }
		public String VarName { get { return _varName; } set { if (Equals(_varName, value)) return; _varName = value; OnPropertyChanged("VarName"); } }
		public Double NormTime { get { return _normTime; } set { if (Equals(_normTime, value)) return; _normTime = value; OnPropertyChanged("NormTime"); } }
		public FlowsheetViewModel Flowsheet { get { return _flowsheet; } set { _flowsheet = value; OnPropertyChanged("Flowsheet"); } }

		protected override void MapPropertiesToEntity()
		{
			Entity.SortOrder = SortOrder; 
			Entity.Name = Name; 
			Entity.Operation = Operation; 
			Entity.Executor = Executor; 
			Entity.VarName = VarName; 
			Entity.NormTime = NormTime; 
			Entity.Flowsheet = Flowsheet == null ? null : Flowsheet.Entity; 
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
			Flowsheet = Entity.Flowsheet == null ? null : new FlowsheetViewModel(Entity.Flowsheet, RepositoryFactory); 
		}

		public override void CopyTo(FlowsheetProcessViewModel target)
		{
			target.SortOrder = SortOrder; 
			target.Name = Name; 
			target.Operation = Operation; 
			target.Executor = Executor; 
			target.VarName = VarName; 
			target.NormTime = NormTime; 
			target.Flowsheet = Flowsheet; 
		}

		public override FlowsheetProcessViewModel Clone()
		{
			var copy = new FlowsheetProcessViewModel(null, RepositoryFactory);
			CopyTo(copy);
			return copy;
		}

        public override int GetHashCode() { return _id; }
        protected bool Equals(FlowsheetProcessViewModel other) { return _id == other._id; }
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
        protected bool Equals(GroupViewModel other) { return _id == other._id; }
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
        protected bool Equals(ImageViewModel other) { return _id == other._id; }
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((ImageViewModel) obj);
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

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public String Name { get { return _name; } set { if (Equals(_name, value)) return; _name = value; OnPropertyChanged("Name"); } }
		public String PlateSize { get { return _plateSize; } set { if (Equals(_plateSize, value)) return; _plateSize = value; OnPropertyChanged("PlateSize"); } }
		public String InvNumber { get { return _invNumber; } set { if (Equals(_invNumber, value)) return; _invNumber = value; OnPropertyChanged("InvNumber"); } }
		public Int32? PlateCount { get { return _plateCount; } set { if (Equals(_plateCount, value)) return; _plateCount = value; OnPropertyChanged("PlateCount"); } }
		public Double? PlatePower { get { return _platePower; } set { if (Equals(_platePower, value)) return; _platePower = value; OnPropertyChanged("PlatePower"); } }
		public Double? EnginePower { get { return _enginePower; } set { if (Equals(_enginePower, value)) return; _enginePower = value; OnPropertyChanged("EnginePower"); } }
		public Double? TotalPower { get { return _totalPower; } set { if (Equals(_totalPower, value)) return; _totalPower = value; OnPropertyChanged("TotalPower"); } }
		public Double? PowerPrice { get { return _powerPrice; } set { if (Equals(_powerPrice, value)) return; _powerPrice = value; OnPropertyChanged("PowerPrice"); } }
		public Double? TimePrice { get { return _timePrice; } set { if (Equals(_timePrice, value)) return; _timePrice = value; OnPropertyChanged("TimePrice"); } }
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
        protected bool Equals(MachineViewModel other) { return _id == other._id; }
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
        protected bool Equals(MassCalculationViewModel other) { return _id == other._id; }
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
		private Double? _price;
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
		public Double? Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }
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

		public Int32 Id { get { return _id; } set { if (Equals(_id, value)) return; _id = value; OnPropertyChanged("Id"); } }
		public Int32 SortOrder { get { return _sortOrder; } set { if (Equals(_sortOrder, value)) return; _sortOrder = value; OnPropertyChanged("SortOrder"); } }
		public Int32? EquipmentExistance { get { return _equipmentExistance; } set { if (Equals(_equipmentExistance, value)) return; _equipmentExistance = value; OnPropertyChanged("EquipmentExistance"); } }
		public String AdditionalInfo { get { return _additionalInfo; } set { if (Equals(_additionalInfo, value)) return; _additionalInfo = value; OnPropertyChanged("AdditionalInfo"); } }
		public Int32? EquipmentLeadTime { get { return _equipmentLeadTime; } set { if (Equals(_equipmentLeadTime, value)) return; _equipmentLeadTime = value; OnPropertyChanged("EquipmentLeadTime"); } }
		public Double Count { get { return _count; } set { if (Equals(_count, value)) return; _count = value; OnPropertyChanged("Count"); } }
		public Double Price { get { return _price; } set { if (Equals(_price, value)) return; _price = value; OnPropertyChanged("Price"); } }
		public Double? CalculationPrice { get { return _calculationPrice; } set { if (Equals(_calculationPrice, value)) return; _calculationPrice = value; OnPropertyChanged("CalculationPrice"); } }
		public Double Sum { get { return _sum; } set { if (Equals(_sum, value)) return; _sum = value; OnPropertyChanged("Sum"); } }
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
