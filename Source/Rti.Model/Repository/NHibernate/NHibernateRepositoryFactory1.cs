
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
            if (typeof(TEntity) == typeof(Rti.Model.Domain.CalculationHistory))
                return (IRepository<TEntity>)new CalculationHistoryRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Constant))
                return (IRepository<TEntity>)new ConstantRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Contract))
                return (IRepository<TEntity>)new ContractRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Contragent))
                return (IRepository<TEntity>)new ContragentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Detail))
                return (IRepository<TEntity>)new DetailRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Drawing))
                return (IRepository<TEntity>)new DrawingRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.DrawingFlowsheetMachine))
                return (IRepository<TEntity>)new DrawingFlowsheetMachineRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.DrawingFlowsheetProcess))
                return (IRepository<TEntity>)new DrawingFlowsheetProcessRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Driver))
                return (IRepository<TEntity>)new DriverRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Employee))
                return (IRepository<TEntity>)new EmployeeRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Equipment))
                return (IRepository<TEntity>)new EquipmentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.EquipmentPayment))
                return (IRepository<TEntity>)new EquipmentPaymentRepository();
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
            if (typeof(TEntity) == typeof(Rti.Model.Domain.MaterialArrivalRecord))
                return (IRepository<TEntity>)new MaterialArrivalRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.MeasureUnit))
                return (IRepository<TEntity>)new MeasureUnitRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Method))
                return (IRepository<TEntity>)new MethodRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Payment))
                return (IRepository<TEntity>)new PaymentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Process))
                return (IRepository<TEntity>)new ProcessRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ReportOfCompletionItem))
                return (IRepository<TEntity>)new ReportOfCompletionItemRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Request))
                return (IRepository<TEntity>)new RequestRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.RequestDetail))
                return (IRepository<TEntity>)new RequestDetailRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.RollingRecord))
                return (IRepository<TEntity>)new RollingRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShavingRecord))
                return (IRepository<TEntity>)new ShavingRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.Shipment))
                return (IRepository<TEntity>)new ShipmentRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShipmentItem))
                return (IRepository<TEntity>)new ShipmentItemRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShipmentItemWorkItem))
                return (IRepository<TEntity>)new ShipmentItemWorkItemRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShippedProductRecord))
                return (IRepository<TEntity>)new ShippedProductRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.ShippingOrderRecord))
                return (IRepository<TEntity>)new ShippingOrderRecordRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.WorkItem))
                return (IRepository<TEntity>)new WorkItemRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.WorkItemPackage))
                return (IRepository<TEntity>)new WorkItemPackageRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.WorkItemPackageMachine))
                return (IRepository<TEntity>)new WorkItemPackageMachineRepository();
            if (typeof(TEntity) == typeof(Rti.Model.Domain.WorkItemRequestDetail))
                return (IRepository<TEntity>)new WorkItemRequestDetailRepository();
			return new NHibernateRepository<TEntity>();
		}

		public IAdditionalInfoRepository GetAdditionalInfoRepository() { return (IAdditionalInfoRepository) GetRepository<Rti.Model.Domain.AdditionalInfo>(); }

		public ICalculationRepository GetCalculationRepository() { return (ICalculationRepository) GetRepository<Rti.Model.Domain.Calculation>(); }

		public ICalculationHistoryRepository GetCalculationHistoryRepository() { return (ICalculationHistoryRepository) GetRepository<Rti.Model.Domain.CalculationHistory>(); }

		public IConstantRepository GetConstantRepository() { return (IConstantRepository) GetRepository<Rti.Model.Domain.Constant>(); }

		public IContractRepository GetContractRepository() { return (IContractRepository) GetRepository<Rti.Model.Domain.Contract>(); }

		public IContragentRepository GetContragentRepository() { return (IContragentRepository) GetRepository<Rti.Model.Domain.Contragent>(); }

		public IDetailRepository GetDetailRepository() { return (IDetailRepository) GetRepository<Rti.Model.Domain.Detail>(); }

		public IDrawingRepository GetDrawingRepository() { return (IDrawingRepository) GetRepository<Rti.Model.Domain.Drawing>(); }

		public IDrawingFlowsheetMachineRepository GetDrawingFlowsheetMachineRepository() { return (IDrawingFlowsheetMachineRepository) GetRepository<Rti.Model.Domain.DrawingFlowsheetMachine>(); }

		public IDrawingFlowsheetProcessRepository GetDrawingFlowsheetProcessRepository() { return (IDrawingFlowsheetProcessRepository) GetRepository<Rti.Model.Domain.DrawingFlowsheetProcess>(); }

		public IDriverRepository GetDriverRepository() { return (IDriverRepository) GetRepository<Rti.Model.Domain.Driver>(); }

		public IEmployeeRepository GetEmployeeRepository() { return (IEmployeeRepository) GetRepository<Rti.Model.Domain.Employee>(); }

		public IEquipmentRepository GetEquipmentRepository() { return (IEquipmentRepository) GetRepository<Rti.Model.Domain.Equipment>(); }

		public IEquipmentPaymentRepository GetEquipmentPaymentRepository() { return (IEquipmentPaymentRepository) GetRepository<Rti.Model.Domain.EquipmentPayment>(); }

		public IGroupRepository GetGroupRepository() { return (IGroupRepository) GetRepository<Rti.Model.Domain.Group>(); }

		public IImageRepository GetImageRepository() { return (IImageRepository) GetRepository<Rti.Model.Domain.Image>(); }

		public IJobRepository GetJobRepository() { return (IJobRepository) GetRepository<Rti.Model.Domain.Job>(); }

		public IMachineRepository GetMachineRepository() { return (IMachineRepository) GetRepository<Rti.Model.Domain.Machine>(); }

		public IMassCalculationRepository GetMassCalculationRepository() { return (IMassCalculationRepository) GetRepository<Rti.Model.Domain.MassCalculation>(); }

		public IMaterialRepository GetMaterialRepository() { return (IMaterialRepository) GetRepository<Rti.Model.Domain.Material>(); }

		public IMaterialArrivalRecordRepository GetMaterialArrivalRecordRepository() { return (IMaterialArrivalRecordRepository) GetRepository<Rti.Model.Domain.MaterialArrivalRecord>(); }

		public IMeasureUnitRepository GetMeasureUnitRepository() { return (IMeasureUnitRepository) GetRepository<Rti.Model.Domain.MeasureUnit>(); }

		public IMethodRepository GetMethodRepository() { return (IMethodRepository) GetRepository<Rti.Model.Domain.Method>(); }

		public IPaymentRepository GetPaymentRepository() { return (IPaymentRepository) GetRepository<Rti.Model.Domain.Payment>(); }

		public IProcessRepository GetProcessRepository() { return (IProcessRepository) GetRepository<Rti.Model.Domain.Process>(); }

		public IReportOfCompletionItemRepository GetReportOfCompletionItemRepository() { return (IReportOfCompletionItemRepository) GetRepository<Rti.Model.Domain.ReportOfCompletionItem>(); }

		public IRequestRepository GetRequestRepository() { return (IRequestRepository) GetRepository<Rti.Model.Domain.Request>(); }

		public IRequestDetailRepository GetRequestDetailRepository() { return (IRequestDetailRepository) GetRepository<Rti.Model.Domain.RequestDetail>(); }

		public IRollingRecordRepository GetRollingRecordRepository() { return (IRollingRecordRepository) GetRepository<Rti.Model.Domain.RollingRecord>(); }

		public IShavingRecordRepository GetShavingRecordRepository() { return (IShavingRecordRepository) GetRepository<Rti.Model.Domain.ShavingRecord>(); }

		public IShipmentRepository GetShipmentRepository() { return (IShipmentRepository) GetRepository<Rti.Model.Domain.Shipment>(); }

		public IShipmentItemRepository GetShipmentItemRepository() { return (IShipmentItemRepository) GetRepository<Rti.Model.Domain.ShipmentItem>(); }

		public IShipmentItemWorkItemRepository GetShipmentItemWorkItemRepository() { return (IShipmentItemWorkItemRepository) GetRepository<Rti.Model.Domain.ShipmentItemWorkItem>(); }

		public IShippedProductRecordRepository GetShippedProductRecordRepository() { return (IShippedProductRecordRepository) GetRepository<Rti.Model.Domain.ShippedProductRecord>(); }

		public IShippingOrderRecordRepository GetShippingOrderRecordRepository() { return (IShippingOrderRecordRepository) GetRepository<Rti.Model.Domain.ShippingOrderRecord>(); }

		public IWorkItemRepository GetWorkItemRepository() { return (IWorkItemRepository) GetRepository<Rti.Model.Domain.WorkItem>(); }

		public IWorkItemPackageRepository GetWorkItemPackageRepository() { return (IWorkItemPackageRepository) GetRepository<Rti.Model.Domain.WorkItemPackage>(); }

		public IWorkItemPackageMachineRepository GetWorkItemPackageMachineRepository() { return (IWorkItemPackageMachineRepository) GetRepository<Rti.Model.Domain.WorkItemPackageMachine>(); }

		public IWorkItemRequestDetailRepository GetWorkItemRequestDetailRepository() { return (IWorkItemRequestDetailRepository) GetRepository<Rti.Model.Domain.WorkItemRequestDetail>(); }

		public IReportRepository GetReportRepository() { return new ReportRepository(); }
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

	public partial class CalculationHistoryRepository : NHibernateRepository<Rti.Model.Domain.CalculationHistory>, ICalculationHistoryRepository
    {

        protected override IQueryOver<Rti.Model.Domain.CalculationHistory, Rti.Model.Domain.CalculationHistory> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.CalculationHistory, Rti.Model.Domain.CalculationHistory> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Calculation).Default;
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

	public partial class ContractRepository : NHibernateRepository<Rti.Model.Domain.Contract>, IContractRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Contract, Rti.Model.Domain.Contract> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Contract, Rti.Model.Domain.Contract> queryOver)
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
			result = result.Fetch(o => o.PlanCalculation).Default;
			result = result.Fetch(o => o.FactCalculation).Default;
			result = result.Fetch(o => o.Equipment).Default;
			result = result.Fetch(o => o.Method).Default;
			result = result.Fetch(o => o.DrawingImage).Default;
			result = result.Fetch(o => o.Customer).Default;
			result = result.Fetch(o => o.SecondaryCustomer).Default;
            return result;
        }
    }

	public partial class DrawingFlowsheetMachineRepository : NHibernateRepository<Rti.Model.Domain.DrawingFlowsheetMachine>, IDrawingFlowsheetMachineRepository
    {

        protected override IQueryOver<Rti.Model.Domain.DrawingFlowsheetMachine, Rti.Model.Domain.DrawingFlowsheetMachine> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.DrawingFlowsheetMachine, Rti.Model.Domain.DrawingFlowsheetMachine> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Drawing).Default;
			result = result.Fetch(o => o.Machine).Default;
            return result;
        }
    }

	public partial class DrawingFlowsheetProcessRepository : NHibernateRepository<Rti.Model.Domain.DrawingFlowsheetProcess>, IDrawingFlowsheetProcessRepository
    {

        protected override IQueryOver<Rti.Model.Domain.DrawingFlowsheetProcess, Rti.Model.Domain.DrawingFlowsheetProcess> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.DrawingFlowsheetProcess, Rti.Model.Domain.DrawingFlowsheetProcess> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Drawing).Default;
			result = result.Fetch(o => o.Process).Default;
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

	public partial class EquipmentPaymentRepository : NHibernateRepository<Rti.Model.Domain.EquipmentPayment>, IEquipmentPaymentRepository
    {

        protected override IQueryOver<Rti.Model.Domain.EquipmentPayment, Rti.Model.Domain.EquipmentPayment> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.EquipmentPayment, Rti.Model.Domain.EquipmentPayment> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Drawing).Default;
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

	public partial class PaymentRepository : NHibernateRepository<Rti.Model.Domain.Payment>, IPaymentRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Payment, Rti.Model.Domain.Payment> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Payment, Rti.Model.Domain.Payment> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Request).Default;
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

	public partial class ReportOfCompletionItemRepository : NHibernateRepository<Rti.Model.Domain.ReportOfCompletionItem>, IReportOfCompletionItemRepository
    {

        protected override IQueryOver<Rti.Model.Domain.ReportOfCompletionItem, Rti.Model.Domain.ReportOfCompletionItem> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.ReportOfCompletionItem, Rti.Model.Domain.ReportOfCompletionItem> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Request).Default;
            return result;
        }
    }

	public partial class RequestRepository : NHibernateRepository<Rti.Model.Domain.Request>, IRequestRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Request, Rti.Model.Domain.Request> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Request, Rti.Model.Domain.Request> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Contract).Default;
			result = result.Fetch(o => o.Customer).Default;
			result = result.Fetch(o => o.Manufacturer).Default;
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
			result = result.Fetch(o => o.MakerEmployee).Default;
            return result;
        }
    }

	public partial class ShipmentRepository : NHibernateRepository<Rti.Model.Domain.Shipment>, IShipmentRepository
    {

        protected override IQueryOver<Rti.Model.Domain.Shipment, Rti.Model.Domain.Shipment> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.Shipment, Rti.Model.Domain.Shipment> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Request).Default;
			result = result.Fetch(o => o.Recipient).Default;
			result = result.Fetch(o => o.Payer).Default;
			result = result.Fetch(o => o.Payment).Default;
			result = result.Fetch(o => o.Driver).Default;
            return result;
        }
    }

	public partial class ShipmentItemRepository : NHibernateRepository<Rti.Model.Domain.ShipmentItem>, IShipmentItemRepository
    {

        protected override IQueryOver<Rti.Model.Domain.ShipmentItem, Rti.Model.Domain.ShipmentItem> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.ShipmentItem, Rti.Model.Domain.ShipmentItem> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Shipment).Default;
			result = result.Fetch(o => o.RequestDetail).Default;
            return result;
        }
    }

	public partial class ShipmentItemWorkItemRepository : NHibernateRepository<Rti.Model.Domain.ShipmentItemWorkItem>, IShipmentItemWorkItemRepository
    {

        protected override IQueryOver<Rti.Model.Domain.ShipmentItemWorkItem, Rti.Model.Domain.ShipmentItemWorkItem> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.ShipmentItemWorkItem, Rti.Model.Domain.ShipmentItemWorkItem> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.ShipmentItem).Default;
			result = result.Fetch(o => o.WorkItem).Default;
            return result;
        }
    }

	public partial class ShippedProductRecordRepository : NHibernateRepository<Rti.Model.Domain.ShippedProductRecord>, IShippedProductRecordRepository
    {

        protected override IQueryOver<Rti.Model.Domain.ShippedProductRecord, Rti.Model.Domain.ShippedProductRecord> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.ShippedProductRecord, Rti.Model.Domain.ShippedProductRecord> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Request).Default;
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

	public partial class WorkItemRepository : NHibernateRepository<Rti.Model.Domain.WorkItem>, IWorkItemRepository
    {

        protected override IQueryOver<Rti.Model.Domain.WorkItem, Rti.Model.Domain.WorkItem> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.WorkItem, Rti.Model.Domain.WorkItem> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Drawing).Default;
			result = result.Fetch(o => o.Employee).Default;
			result = result.Fetch(o => o.FlowsheetMachine).Default;
            return result;
        }
    }

	public partial class WorkItemPackageRepository : NHibernateRepository<Rti.Model.Domain.WorkItemPackage>, IWorkItemPackageRepository
    {

        protected override IQueryOver<Rti.Model.Domain.WorkItemPackage, Rti.Model.Domain.WorkItemPackage> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.WorkItemPackage, Rti.Model.Domain.WorkItemPackage> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.Employee).Default;
            return result;
        }
    }

	public partial class WorkItemPackageMachineRepository : NHibernateRepository<Rti.Model.Domain.WorkItemPackageMachine>, IWorkItemPackageMachineRepository
    {

        protected override IQueryOver<Rti.Model.Domain.WorkItemPackageMachine, Rti.Model.Domain.WorkItemPackageMachine> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.WorkItemPackageMachine, Rti.Model.Domain.WorkItemPackageMachine> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.WorkItemPackage).Default;
			result = result.Fetch(o => o.FlowsheetMachine).Default;
            return result;
        }
    }

	public partial class WorkItemRequestDetailRepository : NHibernateRepository<Rti.Model.Domain.WorkItemRequestDetail>, IWorkItemRequestDetailRepository
    {

        protected override IQueryOver<Rti.Model.Domain.WorkItemRequestDetail, Rti.Model.Domain.WorkItemRequestDetail> GetDefaultQueryOver(IQueryOver<Rti.Model.Domain.WorkItemRequestDetail, Rti.Model.Domain.WorkItemRequestDetail> queryOver)
        {
			var result = queryOver;
			result = result.Fetch(o => o.WorkItem).Default;
			result = result.Fetch(o => o.RequestDetail).Default;
            return result;
        }
    }

}
