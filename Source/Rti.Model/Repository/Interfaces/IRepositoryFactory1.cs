
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public interface IRepositoryFactory
    {
        IRepository<TEntity> GetRepository<TEntity>() where TEntity : class, IIdentifiedEntity;

		IAdditionalInfoRepository GetAdditionalInfoRepository();
		ICalculationRepository GetCalculationRepository();
		ICalculationHistoryRepository GetCalculationHistoryRepository();
		IConstantRepository GetConstantRepository();
		IContractRepository GetContractRepository();
		IContragentRepository GetContragentRepository();
		IDetailRepository GetDetailRepository();
		IDrawingRepository GetDrawingRepository();
		IDrawingFlowsheetMachineRepository GetDrawingFlowsheetMachineRepository();
		IDrawingFlowsheetProcessRepository GetDrawingFlowsheetProcessRepository();
		IDriverRepository GetDriverRepository();
		IEmployeeRepository GetEmployeeRepository();
		IEquipmentRepository GetEquipmentRepository();
		IEquipmentPaymentRepository GetEquipmentPaymentRepository();
		IGroupRepository GetGroupRepository();
		IImageRepository GetImageRepository();
		IJobRepository GetJobRepository();
		IMachineRepository GetMachineRepository();
		IMassCalculationRepository GetMassCalculationRepository();
		IMaterialRepository GetMaterialRepository();
		IMaterialArrivalRecordRepository GetMaterialArrivalRecordRepository();
		IMeasureUnitRepository GetMeasureUnitRepository();
		IMethodRepository GetMethodRepository();
		IPaymentRepository GetPaymentRepository();
		IProcessRepository GetProcessRepository();
		IReportOfCompletionItemRepository GetReportOfCompletionItemRepository();
		IRequestRepository GetRequestRepository();
		IRequestDetailRepository GetRequestDetailRepository();
		IRollingRecordRepository GetRollingRecordRepository();
		IShavingRecordRepository GetShavingRecordRepository();
		IShipmentRepository GetShipmentRepository();
		IShipmentItemRepository GetShipmentItemRepository();
		IShipmentItemWorkItemRepository GetShipmentItemWorkItemRepository();
		IShippedProductRecordRepository GetShippedProductRecordRepository();
		IShippingOrderRecordRepository GetShippingOrderRecordRepository();
		IWorkItemRepository GetWorkItemRepository();
		IWorkItemPackageRepository GetWorkItemPackageRepository();
		IWorkItemPackageMachineRepository GetWorkItemPackageMachineRepository();
		IWorkItemRequestDetailRepository GetWorkItemRequestDetailRepository();
		IReportRepository GetReportRepository();
    }

	public partial interface IAdditionalInfoRepository : IRepository<Rti.Model.Domain.AdditionalInfo> { }
	public partial interface ICalculationRepository : IRepository<Rti.Model.Domain.Calculation> { }
	public partial interface ICalculationHistoryRepository : IRepository<Rti.Model.Domain.CalculationHistory> { }
	public partial interface IConstantRepository : IRepository<Rti.Model.Domain.Constant> { }
	public partial interface IContractRepository : IRepository<Rti.Model.Domain.Contract> { }
	public partial interface IContragentRepository : IRepository<Rti.Model.Domain.Contragent> { }
	public partial interface IDetailRepository : IRepository<Rti.Model.Domain.Detail> { }
	public partial interface IDrawingRepository : IRepository<Rti.Model.Domain.Drawing> { }
	public partial interface IDrawingFlowsheetMachineRepository : IRepository<Rti.Model.Domain.DrawingFlowsheetMachine> { }
	public partial interface IDrawingFlowsheetProcessRepository : IRepository<Rti.Model.Domain.DrawingFlowsheetProcess> { }
	public partial interface IDriverRepository : IRepository<Rti.Model.Domain.Driver> { }
	public partial interface IEmployeeRepository : IRepository<Rti.Model.Domain.Employee> { }
	public partial interface IEquipmentRepository : IRepository<Rti.Model.Domain.Equipment> { }
	public partial interface IEquipmentPaymentRepository : IRepository<Rti.Model.Domain.EquipmentPayment> { }
	public partial interface IGroupRepository : IRepository<Rti.Model.Domain.Group> { }
	public partial interface IImageRepository : IRepository<Rti.Model.Domain.Image> { }
	public partial interface IJobRepository : IRepository<Rti.Model.Domain.Job> { }
	public partial interface IMachineRepository : IRepository<Rti.Model.Domain.Machine> { }
	public partial interface IMassCalculationRepository : IRepository<Rti.Model.Domain.MassCalculation> { }
	public partial interface IMaterialRepository : IRepository<Rti.Model.Domain.Material> { }
	public partial interface IMaterialArrivalRecordRepository : IRepository<Rti.Model.Domain.MaterialArrivalRecord> { }
	public partial interface IMeasureUnitRepository : IRepository<Rti.Model.Domain.MeasureUnit> { }
	public partial interface IMethodRepository : IRepository<Rti.Model.Domain.Method> { }
	public partial interface IPaymentRepository : IRepository<Rti.Model.Domain.Payment> { }
	public partial interface IProcessRepository : IRepository<Rti.Model.Domain.Process> { }
	public partial interface IReportOfCompletionItemRepository : IRepository<Rti.Model.Domain.ReportOfCompletionItem> { }
	public partial interface IRequestRepository : IRepository<Rti.Model.Domain.Request> { }
	public partial interface IRequestDetailRepository : IRepository<Rti.Model.Domain.RequestDetail> { }
	public partial interface IRollingRecordRepository : IRepository<Rti.Model.Domain.RollingRecord> { }
	public partial interface IShavingRecordRepository : IRepository<Rti.Model.Domain.ShavingRecord> { }
	public partial interface IShipmentRepository : IRepository<Rti.Model.Domain.Shipment> { }
	public partial interface IShipmentItemRepository : IRepository<Rti.Model.Domain.ShipmentItem> { }
	public partial interface IShipmentItemWorkItemRepository : IRepository<Rti.Model.Domain.ShipmentItemWorkItem> { }
	public partial interface IShippedProductRecordRepository : IRepository<Rti.Model.Domain.ShippedProductRecord> { }
	public partial interface IShippingOrderRecordRepository : IRepository<Rti.Model.Domain.ShippingOrderRecord> { }
	public partial interface IWorkItemRepository : IRepository<Rti.Model.Domain.WorkItem> { }
	public partial interface IWorkItemPackageRepository : IRepository<Rti.Model.Domain.WorkItemPackage> { }
	public partial interface IWorkItemPackageMachineRepository : IRepository<Rti.Model.Domain.WorkItemPackageMachine> { }
	public partial interface IWorkItemRequestDetailRepository : IRepository<Rti.Model.Domain.WorkItemRequestDetail> { }
}
