using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Services
{
    public class EmployeeRoleService : IEmployeeRoleService
    {
        Task<Entities.EmployeeRole> IEmployeeRoleService.AddEmployeeRole(Entities.EmployeeRole employeeRole)
        {
            throw new System.NotImplementedException();
        }
    }
}
