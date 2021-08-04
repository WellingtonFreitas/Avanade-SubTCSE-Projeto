using Avanade.SubTCSE.Projeto.Application.Dtos.EmployeeRole;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.Interfaces.EmployeeRole
{
    public interface IEmployeeRoleAppService
    {
        Task<EmployeeRoleDto> AddEmployeeRoleAsync(EmployeeRoleDto employeeRole);
        Task<EmployeeRoleDto> FindAllEmployeeRoleAsync();
        Task<EmployeeRoleDto> FindByIdAsync(string id);
        void DeleteById(string id);
    }
}
