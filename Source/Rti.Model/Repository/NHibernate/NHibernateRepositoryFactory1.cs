
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
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Calculation))
                return (IRepository<TEntity>)new CalculationRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Constant))
                return (IRepository<TEntity>)new ConstantRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Contragent))
                return (IRepository<TEntity>)new ContragentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.DailyWorkPackage))
                return (IRepository<TEntity>)new DailyWorkPackageRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.DailyWorkPackageDetail))
                return (IRepository<TEntity>)new DailyWorkPackageDetailRepository();
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
            if (typeof(TEntity) == typeof(Rti.Model.Domain.FlowsheetMachine))
                return (IRepository<TEntity>)new FlowsheetMachineRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.FlowsheetProcess))
                return (IRepository<TEntity>)new FlowsheetProcessRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Group))
                return (IRepository<TEntity>)new GroupRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Image))
                return (IRepository<TEntity>)new ImageRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Invoice))
                return (IRepository<TEntity>)new InvoiceRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Job))
                return (IRepository<TEntity>)new JobRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Machine))
                return (IRepository<TEntity>)new MachineRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.MassCalculation))
                return (IRepository<TEntity>)new MassCalculationRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Material))
                return (IRepository<TEntity>)new MaterialRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.MaterialArrivalRecord))
                return (IRepository<TEntity>)new MaterialArrivalRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.MeasureUnit))
                return (IRepository<TEntity>)new MeasureUnitRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Method))
                return (IRepository<TEntity>)new MethodRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Process))
                return (IRepository<TEntity>)new ProcessRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Request))
                return (IRepository<TEntity>)new RequestRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.RequestDetail))
                return (IRepository<TEntity>)new RequestDetailRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.RollingRecord))
                return (IRepository<TEntity>)new RollingRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShavingRecord))
                return (IRepository<TEntity>)new ShavingRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShippedProductRecord))
                return (IRepository<TEntity>)new ShippedProductRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShippingOrderRecord))
                return (IRepository<TEntity>)new ShippingOrderRecordRepository();
			return new NHibernateRepository<TEntity>();
		}

		public IAdditionalInfoRepository GetAdditionalInfoRepository() { return (IAdditionalInfoRepository) GetRepository<Rti.Model.Domain.AdditionalInfo>(); }

		public ICalculationRepository GetCalculationRepository() { return (ICalculationRepository) GetRepository<Rti.Model.Domain.Calculation>(); }

		public IConstantRepository GetConstantRepository() { return (IConstantRepository) GetRepository<Rti.Model.Domain.Constant>(); }

		public IContragentRepository GetContragentRepository() { return (IContragentRepository) GetRepository<Rti.Model.Domain.Contragent>(); }

		public IDailyWorkPackageRepository GetDailyWorkPackageRepository() { return (IDailyWorkPackageRepository) GetRepository<Rti.Model.Domain.DailyWorkPackage>(); }

		public IDailyWorkPackageDetailRepository GetDailyWorkPackageDetailRepository() { return (IDailyWorkPackageDetailRepository) GetRepository<Rti.Model.Domain.DailyWorkPackageDetail>(); }

		public IDetailRepository GetDetailRepository() { return (IDetailRepository) GetRepository<Rti.Model.Domain.Detail>(); }

		public IDrawingRepository GetDrawingRepository() { return (IDrawingRepository) GetRepository<Rti.Model.Domain.Drawing>(); }

		public IDriverRepository GetDriverRepository() { return (IDriverRepository) GetRepository<Rti.Model.Domain.Driver>(); }

		public IEmployeeRepository GetEmployeeRepository() { return (IEmployeeRepository) GetRepository<Rti.Model.Domain.Employee>(); }

		public IEquipmentRepository GetEquipmentRepository() { return (IEquipmentRepository) GetRepository<Rti.Model.Domain.Equipment>(); }

		public IFlowsheetRepository GetFlowsheetRepository() { return (IFlowsheetRepository) GetRepository<Rti.Model.Domain.Flowsheet>(); }

		public IFlowsheetMachineRepository GetFlowsheetMachineRepository() { return (IFlowsheetMachineRepository) GetRepository<Rti.Model.Domain.FlowsheetMachine>(); }

		public IFlowsheetProcessRepository GetFlowsheetProcessRepository() { return (IFlowsheetProcessRepository) GetRepository<Rti.Model.Domain.FlowsheetProcess>(); }

		public IGroupRepository GetGroupRepository() { return (IGroupRepository) GetRepository<Rti.Model.Domain.Group>(); }

		public IImageRepository GetImageRepository() { return (IImageRepository) GetRepository<Rti.Model.Domain.Image>(); }

		public IInvoiceRepository GetInvoiceRepository() { return (IInvoiceRepository) GetRepository<Rti.Model.Domain.Invoice>(); }

		public IJobRepository GetJobRepository() { return (IJobRepository) GetRepository<Rti.Model.Domain.Job>(); }

		public IMachineRepository GetMachineRepository() { return (IMachineRepository) GetRepository<Rti.Model.Domain.Machine>(); }

		public IMassCalculationRepository GetMassCalculationRepository() { return (IMassCalculationRepository) GetRepository<Rti.Model.Domain.MassCalculation>(); }

		public IMaterialRepository GetMaterialRepository() { return (IMaterialRepository) GetRepository<Rti.Model.Domain.Material>(); }

		public IMaterialArrivalRecordRepository GetMaterialArrivalRecordRepository() { return (IMaterialArrivalRecordRepository) GetRepository<Rti.Model.Domain.MaterialArrivalRecord>(); }

		public IMeasureUnitRepository GetMeasureUnitRepository() { return (IMeasureUnitRepository) GetRepository<Rti.Model.Domain.MeasureUnit>(); }

		public IMethodRepository GetMethodRepository() { return (IMethodRepository) GetRepository<Rti.Model.Domain.Method>(); }

		public IProcessRepository GetProcessRepository() { return (IProcessRepository) GetRepository<Rti.Model.Domain.Process>(); }

		public IRequestRepository GetRequestRepository() { return (IRequestRepository) GetRepository<Rti.Model.Domain.Request>(); }

		public IRequestDetailRepository GetRequestDetailRepository() { return (IRequestDetailRepository) GetRepository<Rti.Model.Domain.RequestDetail>(); }

		public IRollingRecordRepository GetRollingRecordRepository() { return (IRollingRecordRepository) GetRepository<Rti.Model.Domain.RollingRecord>(); }

		public IShavingRecordRepository GetShavingRecordRepository() { return (IShavingRecordRepository) GetRepository<Rti.Model.Domain.ShavingRecord>(); }

		public IShippedProductRecordRepository GetShippedProductRecordRepository() { return (IShippedProductRecordRepository) GetRepository<Rti.Model.Domain.ShippedProductRecord>(); }

		public IShippingOrderRecordRepository GetShippingOrderRecordRepository() { return (IShippingOrderRecordRepository) GetRepository<Rti.Model.Domain.ShippingOrderRecord>(); }

	}
	public partial class AdditionalInfoRepository : NHibernateRepository<Rti.Model.Domain.AdditionalInfo>, IAdditionalInfoRepository
    {

        protected override IQueryOver<Rti.Model.Domain.AdditionalInfo, Rti.Model.Domain.AdditionalInfo> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.AdditionalInfo, Rti.Model.Domain.AdditionalInfo> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class CalculationRepository : NHibernateRepository<Rti.Model.Domain.Calculation>, ICalculationRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Calculation, Rti.Model.Domain.Calculation> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Calculation, Rti.Model.Domain.Calculation> queryOver)
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

	public partial class DailyWorkPackageRepository : NHibernateRepository<Rti.Model.Domain.DailyWorkPackage>, IDailyWorkPackageRepository
    {

        protected override IQueryOver<Rti.Model.Domain.DailyWorkPackage, Rti.Model.Domain.DailyWorkPackage> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.DailyWorkPackage, Rti.Model.Domain.DailyWorkPackage> queryOver)
        {
			var result = queryOver;
            return result;
        }
    }

	public partial class DailyWorkPackageDetailRepository : NHibernateRepository<Rti.Model.Domain.DailyWorkPackageDetail>, IDailyWorkPackageDetailRepository
    {

        protected override IQueryOver<Rti.Model.Domain.DailyWorkPackageDetail, Rti.Model.Domain.DailyWorkPackageDetail> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.DailyWorkPackageDetail, Rti.Model.Domain.DailyWorkPackageDetail> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.DailyWorkPackage).Default;
			result = result.Fetch(o => o.Drawing).Default;
			result = result.Fetch(o => o.Employee).Default;
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
			result = result.Fetch(o => o.PlanCalculation).Default;
			result = result.Fetch(o => o.FactCalculation).Default;
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
            return result;
        }
    }

	public partial class FlowsheetRepository : NHibernateRepository<Rti.Model.Domain.Flowsheet>, IFlowsheetRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Flowsheet, Rti.Model.Domain.Flowsheet> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Flowsheet, Rti.Model.Domain.Flowsheet> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Customer).Default;
			result = result.Fetch(o => o.SecondaryCustomer).Default;
            return result;
        }
    }

	public partial class FlowsheetMachineRepository : NHibernateRepository<Rti.Model.Domain.FlowsheetMachine>, IFlowsheetMachineRepository
    {

        protected override IQueryOver<Rti.Model.Domain.FlowsheetMachine, Rti.Model.Domain.FlowsheetMachine> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.FlowsheetMachine, Rti.Model.Domain.FlowsheetMachine> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Flowsheet).Default;
			result = result.Fetch(o => o.Machine).Default;
            return result;
        }
    }

	public partial class FlowsheetProcessRepository : NHibernateRepository<Rti.Model.Domain.FlowsheetProcess>, IFlowsheetProcessRepository
    {

        protected override IQueryOver<Rti.Model.Domain.FlowsheetProcess, Rti.Model.Domain.FlowsheetProcess> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.FlowsheetProcess, Rti.Model.Domain.FlowsheetProcess> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Flowsheet).Default;
			result = result.Fetch(o => o.Process).Default;
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

	public partial class InvoiceRepository : NHibernateRepository<Rti.Model.Domain.Invoice>, IInvoiceRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Invoice, Rti.Model.Domain.Invoice> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Invoice, Rti.Model.Domain.Invoice> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Request).Default;
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

	public partial class MaterialArrivalRecordRepository : NHibernateRepository<Rti.Model.Domain.MaterialArrivalRecord>, IMaterialArrivalRecordRepository
    {

        protected override IQueryOver<Rti.Model.Domain.MaterialArrivalRecord, Rti.Model.Domain.MaterialArrivalRecord> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.MaterialArrivalRecord, Rti.Model.Domain.MaterialArrivalRecord> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Supplier).Default;
			result = result.Fetch(o => o.Material).Default;
			result = result.Fetch(o => o.MeasureUnit).Default;
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

	public partial class ProcessRepository : NHibernateRepository<Rti.Model.Domain.Process>, IProcessRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Process, Rti.Model.Domain.Process> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Process, Rti.Model.Domain.Process> queryOver)
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

	public partial class RollingRecordRepository : NHibernateRepository<Rti.Model.Domain.RollingRecord>, IRollingRecordRepository
    {

        protected override IQueryOver<Rti.Model.Domain.RollingRecord, Rti.Model.Domain.RollingRecord> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.RollingRecord, Rti.Model.Domain.RollingRecord> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Customer).Default;
			result = result.Fetch(o => o.Drawing).Default;
			result = result.Fetch(o => o.Material).Default;
            return result;
        }
    }

	public partial class ShavingRecordRepository : NHibernateRepository<Rti.Model.Domain.ShavingRecord>, IShavingRecordRepository
    {

        protected override IQueryOver<Rti.Model.Domain.ShavingRecord, Rti.Model.Domain.ShavingRecord> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.ShavingRecord, Rti.Model.Domain.ShavingRecord> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.ShaverEmployee).Default;
			result = result.Fetch(o => o.Drawing).Default;
            return result;
        }
    }

	public partial class ShippedProductRecordRepository : NHibernateRepository<Rti.Model.Domain.ShippedProductRecord>, IShippedProductRecordRepository
    {

        protected override IQueryOver<Rti.Model.Domain.ShippedProductRecord, Rti.Model.Domain.ShippedProductRecord> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.ShippedProductRecord, Rti.Model.Domain.ShippedProductRecord> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Invoice).Default;
			result = result.Fetch(o => o.Equipment).Default;
			result = result.Fetch(o => o.Employee).Default;
            return result;
        }
    }

	public partial class ShippingOrderRecordRepository : NHibernateRepository<Rti.Model.Domain.ShippingOrderRecord>, IShippingOrderRecordRepository
    {

        protected override IQueryOver<Rti.Model.Domain.ShippingOrderRecord, Rti.Model.Domain.ShippingOrderRecord> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.ShippingOrderRecord, Rti.Model.Domain.ShippingOrderRecord> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Customer).Default;
			result = result.Fetch(o => o.Drawing).Default;
            return result;
        }
    }

}
