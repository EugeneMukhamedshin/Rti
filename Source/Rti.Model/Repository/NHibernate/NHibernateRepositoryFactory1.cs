
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using NHibernate;

namespace Rti.Model.Repository.NHibernate
{
    public class NHibernateRepositoryFactory: IRepositoryFactory
    {
        public IRepository<TEntity> GetRepository<TEntity>() where TEntity : class, IIdentifiedEntity
        {
            if (typeof(TEntity) == typeof(Rti.Model.Domain.AdditionalInfo))
                return (IRepository<TEntity>)new AdditionalInfoRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Constant))
                return (IRepository<TEntity>)new ConstantRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Contragent))
                return (IRepository<TEntity>)new ContragentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Detail))
                return (IRepository<TEntity>)new DetailRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Drawing))
                return (IRepository<TEntity>)new DrawingRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Driver))
                return (IRepository<TEntity>)new DriverRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Employee))
                return (IRepository<TEntity>)new EmployeeRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Equipment))
                return (IRepository<TEntity>)new EquipmentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Flowsheet))
                return (IRepository<TEntity>)new FlowsheetRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.FlowsheetEquipment))
                return (IRepository<TEntity>)new FlowsheetEquipmentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Group))
                return (IRepository<TEntity>)new GroupRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Image))
                return (IRepository<TEntity>)new ImageRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Job))
                return (IRepository<TEntity>)new JobRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Machine))
                return (IRepository<TEntity>)new MachineRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.MassCalculation))
                return (IRepository<TEntity>)new MassCalculationRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Material))
                return (IRepository<TEntity>)new MaterialRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.MeasureUnit))
                return (IRepository<TEntity>)new MeasureUnitRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Method))
                return (IRepository<TEntity>)new MethodRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Request))
                return (IRepository<TEntity>)new RequestRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.RequestDetail))
                return (IRepository<TEntity>)new RequestDetailRepository();
			return new NHibernateRepository<TEntity>();
		}

		public IAdditionalInfoRepository GetAdditionalInfoRepository() { return (IAdditionalInfoRepository) GetRepository<Rti.Model.Domain.AdditionalInfo>(); }

		public IConstantRepository GetConstantRepository() { return (IConstantRepository) GetRepository<Rti.Model.Domain.Constant>(); }

		public IContragentRepository GetContragentRepository() { return (IContragentRepository) GetRepository<Rti.Model.Domain.Contragent>(); }

		public IDetailRepository GetDetailRepository() { return (IDetailRepository) GetRepository<Rti.Model.Domain.Detail>(); }

		public IDrawingRepository GetDrawingRepository() { return (IDrawingRepository) GetRepository<Rti.Model.Domain.Drawing>(); }

		public IDriverRepository GetDriverRepository() { return (IDriverRepository) GetRepository<Rti.Model.Domain.Driver>(); }

		public IEmployeeRepository GetEmployeeRepository() { return (IEmployeeRepository) GetRepository<Rti.Model.Domain.Employee>(); }

		public IEquipmentRepository GetEquipmentRepository() { return (IEquipmentRepository) GetRepository<Rti.Model.Domain.Equipment>(); }

		public IFlowsheetRepository GetFlowsheetRepository() { return (IFlowsheetRepository) GetRepository<Rti.Model.Domain.Flowsheet>(); }

		public IFlowsheetEquipmentRepository GetFlowsheetEquipmentRepository() { return (IFlowsheetEquipmentRepository) GetRepository<Rti.Model.Domain.FlowsheetEquipment>(); }

		public IGroupRepository GetGroupRepository() { return (IGroupRepository) GetRepository<Rti.Model.Domain.Group>(); }

		public IImageRepository GetImageRepository() { return (IImageRepository) GetRepository<Rti.Model.Domain.Image>(); }

		public IJobRepository GetJobRepository() { return (IJobRepository) GetRepository<Rti.Model.Domain.Job>(); }

		public IMachineRepository GetMachineRepository() { return (IMachineRepository) GetRepository<Rti.Model.Domain.Machine>(); }

		public IMassCalculationRepository GetMassCalculationRepository() { return (IMassCalculationRepository) GetRepository<Rti.Model.Domain.MassCalculation>(); }

		public IMaterialRepository GetMaterialRepository() { return (IMaterialRepository) GetRepository<Rti.Model.Domain.Material>(); }

		public IMeasureUnitRepository GetMeasureUnitRepository() { return (IMeasureUnitRepository) GetRepository<Rti.Model.Domain.MeasureUnit>(); }

		public IMethodRepository GetMethodRepository() { return (IMethodRepository) GetRepository<Rti.Model.Domain.Method>(); }

		public IRequestRepository GetRequestRepository() { return (IRequestRepository) GetRepository<Rti.Model.Domain.Request>(); }

		public IRequestDetailRepository GetRequestDetailRepository() { return (IRequestDetailRepository) GetRepository<Rti.Model.Domain.RequestDetail>(); }

	}
	public partial class AdditionalInfoRepository : NHibernateRepository<Rti.Model.Domain.AdditionalInfo>, IAdditionalInfoRepository
    {

        protected override IQueryOver<Rti.Model.Domain.AdditionalInfo, Rti.Model.Domain.AdditionalInfo> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.AdditionalInfo, Rti.Model.Domain.AdditionalInfo> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class ConstantRepository : NHibernateRepository<Rti.Model.Domain.Constant>, IConstantRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Constant, Rti.Model.Domain.Constant> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Constant, Rti.Model.Domain.Constant> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class ContragentRepository : NHibernateRepository<Rti.Model.Domain.Contragent>, IContragentRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Contragent, Rti.Model.Domain.Contragent> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Contragent, Rti.Model.Domain.Contragent> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class DetailRepository : NHibernateRepository<Rti.Model.Domain.Detail>, IDetailRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Detail, Rti.Model.Domain.Detail> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Detail, Rti.Model.Domain.Detail> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class DrawingRepository : NHibernateRepository<Rti.Model.Domain.Drawing>, IDrawingRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Drawing, Rti.Model.Domain.Drawing> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Drawing, Rti.Model.Domain.Drawing> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Group).Default;
			result = result.Fetch(o => o.Detail).Default;
			result = result.Fetch(o => o.MaterialByPassport).Default;
			result = result.Fetch(o => o.Material).Default;
			result = result.Fetch(o => o.MeasureUnit).Default;
			result = result.Fetch(o => o.MassCalculation).Default;
			result = result.Fetch(o => o.Equipment).Default;
			result = result.Fetch(o => o.Method).Default;
			result = result.Fetch(o => o.DrawingImage).Default;
			result = result.Fetch(o => o.Flowsheet).Default;
            return result;
        }
    }

	public partial class DriverRepository : NHibernateRepository<Rti.Model.Domain.Driver>, IDriverRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Driver, Rti.Model.Domain.Driver> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Driver, Rti.Model.Domain.Driver> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class EmployeeRepository : NHibernateRepository<Rti.Model.Domain.Employee>, IEmployeeRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Employee, Rti.Model.Domain.Employee> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Employee, Rti.Model.Domain.Employee> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Job).Default;
            return result;
        }
    }

	public partial class EquipmentRepository : NHibernateRepository<Rti.Model.Domain.Equipment>, IEquipmentRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Equipment, Rti.Model.Domain.Equipment> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Equipment, Rti.Model.Domain.Equipment> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Group).Default;
			result = result.Fetch(o => o.Drawing).Default;
            return result;
        }
    }

	public partial class FlowsheetRepository : NHibernateRepository<Rti.Model.Domain.Flowsheet>, IFlowsheetRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Flowsheet, Rti.Model.Domain.Flowsheet> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Flowsheet, Rti.Model.Domain.Flowsheet> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Customer).Default;
			result = result.Fetch(o => o.SecondaryCustormer).Default;
            return result;
        }
    }

	public partial class FlowsheetEquipmentRepository : NHibernateRepository<Rti.Model.Domain.FlowsheetEquipment>, IFlowsheetEquipmentRepository
    {

        protected override IQueryOver<Rti.Model.Domain.FlowsheetEquipment, Rti.Model.Domain.FlowsheetEquipment> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.FlowsheetEquipment, Rti.Model.Domain.FlowsheetEquipment> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Flowsheet).Default;
			result = result.Fetch(o => o.Equipment).Default;
            return result;
        }
    }

	public partial class GroupRepository : NHibernateRepository<Rti.Model.Domain.Group>, IGroupRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Group, Rti.Model.Domain.Group> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Group, Rti.Model.Domain.Group> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class ImageRepository : NHibernateRepository<Rti.Model.Domain.Image>, IImageRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Image, Rti.Model.Domain.Image> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Image, Rti.Model.Domain.Image> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class JobRepository : NHibernateRepository<Rti.Model.Domain.Job>, IJobRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Job, Rti.Model.Domain.Job> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Job, Rti.Model.Domain.Job> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class MachineRepository : NHibernateRepository<Rti.Model.Domain.Machine>, IMachineRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Machine, Rti.Model.Domain.Machine> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Machine, Rti.Model.Domain.Machine> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class MassCalculationRepository : NHibernateRepository<Rti.Model.Domain.MassCalculation>, IMassCalculationRepository
    {

        protected override IQueryOver<Rti.Model.Domain.MassCalculation, Rti.Model.Domain.MassCalculation> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.MassCalculation, Rti.Model.Domain.MassCalculation> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class MaterialRepository : NHibernateRepository<Rti.Model.Domain.Material>, IMaterialRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Material, Rti.Model.Domain.Material> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Material, Rti.Model.Domain.Material> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class MeasureUnitRepository : NHibernateRepository<Rti.Model.Domain.MeasureUnit>, IMeasureUnitRepository
    {

        protected override IQueryOver<Rti.Model.Domain.MeasureUnit, Rti.Model.Domain.MeasureUnit> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.MeasureUnit, Rti.Model.Domain.MeasureUnit> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class MethodRepository : NHibernateRepository<Rti.Model.Domain.Method>, IMethodRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Method, Rti.Model.Domain.Method> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Method, Rti.Model.Domain.Method> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class RequestRepository : NHibernateRepository<Rti.Model.Domain.Request>, IRequestRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Request, Rti.Model.Domain.Request> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Request, Rti.Model.Domain.Request> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Customer).Default;
            return result;
        }
    }

	public partial class RequestDetailRepository : NHibernateRepository<Rti.Model.Domain.RequestDetail>, IRequestDetailRepository
    {

        protected override IQueryOver<Rti.Model.Domain.RequestDetail, Rti.Model.Domain.RequestDetail> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.RequestDetail, Rti.Model.Domain.RequestDetail> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Request).Default;
			result = result.Fetch(o => o.Drawing).Default;
			result = result.Fetch(o => o.Group).Default;
			result = result.Fetch(o => o.Detail).Default;
			result = result.Fetch(o => o.Material).Default;
            return result;
        }
    }

}
