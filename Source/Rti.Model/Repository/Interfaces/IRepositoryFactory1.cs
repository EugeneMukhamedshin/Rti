
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public interface IRepositoryFactory
    {
        IRepository<TEntity> GetRepository<TEntity>() where TEntity : class, IIdentifiedEntity;

		IAdditionalInfoRepository GetAdditionalInfoRepository();
		IConstantRepository GetConstantRepository();
		IContragentRepository GetContragentRepository();
		IDetailRepository GetDetailRepository();
		IDrawingRepository GetDrawingRepository();
		IDriverRepository GetDriverRepository();
		IEmployeeRepository GetEmployeeRepository();
		IEquipmentRepository GetEquipmentRepository();
		IGroupRepository GetGroupRepository();
		IJobRepository GetJobRepository();
		IMachineRepository GetMachineRepository();
		IMaterialRepository GetMaterialRepository();
		IMeasureUnitRepository GetMeasureUnitRepository();
		IMethodRepository GetMethodRepository();
		IRequestRepository GetRequestRepository();
		IRequestDetailRepository GetRequestDetailRepository();
    }

	public partial interface IAdditionalInfoRepository : IRepository<Rti.Model.Domain.AdditionalInfo> { }
	public partial interface IConstantRepository : IRepository<Rti.Model.Domain.Constant> { }
	public partial interface IContragentRepository : IRepository<Rti.Model.Domain.Contragent> { }
	public partial interface IDetailRepository : IRepository<Rti.Model.Domain.Detail> { }
	public partial interface IDrawingRepository : IRepository<Rti.Model.Domain.Drawing> { }
	public partial interface IDriverRepository : IRepository<Rti.Model.Domain.Driver> { }
	public partial interface IEmployeeRepository : IRepository<Rti.Model.Domain.Employee> { }
	public partial interface IEquipmentRepository : IRepository<Rti.Model.Domain.Equipment> { }
	public partial interface IGroupRepository : IRepository<Rti.Model.Domain.Group> { }
	public partial interface IJobRepository : IRepository<Rti.Model.Domain.Job> { }
	public partial interface IMachineRepository : IRepository<Rti.Model.Domain.Machine> { }
	public partial interface IMaterialRepository : IRepository<Rti.Model.Domain.Material> { }
	public partial interface IMeasureUnitRepository : IRepository<Rti.Model.Domain.MeasureUnit> { }
	public partial interface IMethodRepository : IRepository<Rti.Model.Domain.Method> { }
	public partial interface IRequestRepository : IRepository<Rti.Model.Domain.Request> { }
	public partial interface IRequestDetailRepository : IRepository<Rti.Model.Domain.RequestDetail> { }
}
