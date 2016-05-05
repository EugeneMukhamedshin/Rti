
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public interface IRepositoryFactory
    {
        IRepository<TEntity> GetRepository<TEntity>() where TEntity : class, IIdentifiedEntity;

		IAdditionalInfoRepository GetAdditionalInfoRepository();
		ICalculationRepository GetCalculationRepository();
		IConstantRepository GetConstantRepository();
		IContragentRepository GetContragentRepository();
		IDailyWorkPackageRepository GetDailyWorkPackageRepository();
		IDailyWorkPackageDetailRepository GetDailyWorkPackageDetailRepository();
		IDetailRepository GetDetailRepository();
		IDrawingRepository GetDrawingRepository();
		IDriverRepository GetDriverRepository();
		IEmployeeRepository GetEmployeeRepository();
		IEquipmentRepository GetEquipmentRepository();
		IFlowsheetRepository GetFlowsheetRepository();
		IFlowsheetMachineRepository GetFlowsheetMachineRepository();
		IFlowsheetProcessRepository GetFlowsheetProcessRepository();
		IGroupRepository GetGroupRepository();
		IImageRepository GetImageRepository();
		IJobRepository GetJobRepository();
		IMachineRepository GetMachineRepository();
		IMassCalculationRepository GetMassCalculationRepository();
		IMaterialRepository GetMaterialRepository();
		IMeasureUnitRepository GetMeasureUnitRepository();
		IMethodRepository GetMethodRepository();
		IProcessRepository GetProcessRepository();
		IRequestRepository GetRequestRepository();
		IRequestDetailRepository GetRequestDetailRepository();
		IShavingRecordRepository GetShavingRecordRepository();
    }

	public partial interface IAdditionalInfoRepository : IRepository<Rti.Model.Domain.AdditionalInfo> { }
	public partial interface ICalculationRepository : IRepository<Rti.Model.Domain.Calculation> { }
	public partial interface IConstantRepository : IRepository<Rti.Model.Domain.Constant> { }
	public partial interface IContragentRepository : IRepository<Rti.Model.Domain.Contragent> { }
	public partial interface IDailyWorkPackageRepository : IRepository<Rti.Model.Domain.DailyWorkPackage> { }
	public partial interface IDailyWorkPackageDetailRepository : IRepository<Rti.Model.Domain.DailyWorkPackageDetail> { }
	public partial interface IDetailRepository : IRepository<Rti.Model.Domain.Detail> { }
	public partial interface IDrawingRepository : IRepository<Rti.Model.Domain.Drawing> { }
	public partial interface IDriverRepository : IRepository<Rti.Model.Domain.Driver> { }
	public partial interface IEmployeeRepository : IRepository<Rti.Model.Domain.Employee> { }
	public partial interface IEquipmentRepository : IRepository<Rti.Model.Domain.Equipment> { }
	public partial interface IFlowsheetRepository : IRepository<Rti.Model.Domain.Flowsheet> { }
	public partial interface IFlowsheetMachineRepository : IRepository<Rti.Model.Domain.FlowsheetMachine> { }
	public partial interface IFlowsheetProcessRepository : IRepository<Rti.Model.Domain.FlowsheetProcess> { }
	public partial interface IGroupRepository : IRepository<Rti.Model.Domain.Group> { }
	public partial interface IImageRepository : IRepository<Rti.Model.Domain.Image> { }
	public partial interface IJobRepository : IRepository<Rti.Model.Domain.Job> { }
	public partial interface IMachineRepository : IRepository<Rti.Model.Domain.Machine> { }
	public partial interface IMassCalculationRepository : IRepository<Rti.Model.Domain.MassCalculation> { }
	public partial interface IMaterialRepository : IRepository<Rti.Model.Domain.Material> { }
	public partial interface IMeasureUnitRepository : IRepository<Rti.Model.Domain.MeasureUnit> { }
	public partial interface IMethodRepository : IRepository<Rti.Model.Domain.Method> { }
	public partial interface IProcessRepository : IRepository<Rti.Model.Domain.Process> { }
	public partial interface IRequestRepository : IRepository<Rti.Model.Domain.Request> { }
	public partial interface IRequestDetailRepository : IRepository<Rti.Model.Domain.RequestDetail> { }
	public partial interface IShavingRecordRepository : IRepository<Rti.Model.Domain.ShavingRecord> { }
}
