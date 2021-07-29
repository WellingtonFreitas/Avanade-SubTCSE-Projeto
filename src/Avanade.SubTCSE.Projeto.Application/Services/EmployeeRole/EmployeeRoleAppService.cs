using AutoMapper;
using Avanade.SubTCSE.Projeto.Application.Dtos.EmployeeRole;
using Avanade.SubTCSE.Projeto.Application.Interfaces.EmployeeRole;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Services;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.Services.EmployeeRole
{
    public class EmployeeRoleAppService : IEmployeeRoleAppService
    {
        private readonly IMapper _mapper;
        private readonly IEmployeeRoleService _employeeRoleService;
        public async Task<EmployeeRoleDto> AddEmployeeRoleAsync(EmployeeRoleDto employeeRoleDto)
        {
            //mapeando do DTO para o dominio
            var itemDomain = _mapper.Map<EmployeeRoleDto, Domain.Aggregates.EmployeeRole.Entities.EmployeeRole>(employeeRoleDto);
            //chama metodo de add
            var item =await _employeeRoleService.AddEmployeeRoleAsync(itemDomain);
            //mapeando do dominio para o DTO
            var itemDTO = _mapper.Map<Domain.Aggregates.EmployeeRole.Entities.EmployeeRole,EmployeeRoleDto>(item);

            return itemDTO;
        }
    }
}
