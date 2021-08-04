using AutoMapper;
using Avanade.SubTCSE.Projeto.Application.Dtos.EmployeeRole;
using Avanade.SubTCSE.Projeto.Application.Interfaces.EmployeeRole;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Interfaces.Services;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.Services.EmployeeRole
{
    public class EmployeeRoleAppService : IEmployeeRoleAppService
    {
        private readonly IMapper _mapper;
        private readonly IEmployeeRoleService _employeeRoleService;

        public EmployeeRoleAppService(IMapper mapper, IEmployeeRoleService employeeRoleService)
        {
            _mapper = mapper;
            _employeeRoleService = employeeRoleService;
        }
        public async Task<EmployeeRoleDto> AddEmployeeRoleAsync(EmployeeRoleDto employeeRoleDto)
        {
            //mapeando do DTO para o dominio
            var itemDomain = _mapper.Map<EmployeeRoleDto, Domain.Aggregates.EmployeeRole.Entities.EmployeeRole>(employeeRoleDto);
            //chama metodo de add
            var item = await _employeeRoleService.AddEmployeeRoleAsync(itemDomain);
            //mapeando do dominio para o DTO
            var itemDTO = _mapper.Map<Domain.Aggregates.EmployeeRole.Entities.EmployeeRole, EmployeeRoleDto>(item);

            return itemDTO;
        }

        public void DeleteById(string id)
        {
             _employeeRoleService.DeleteById(id);
        }

        public async Task<EmployeeRoleDto> FindAllEmployeeRoleAsync()
        {
            var item = await _employeeRoleService.FindAllAsync();
            //TODO: ver o motivo desse mapeamento não ter funcionado igual o do felipe esse mapeamento retorna erro
            return (EmployeeRoleDto)_mapper.Map<IList<Domain.Aggregates.EmployeeRole.Entities.EmployeeRole>, IList<EmployeeRoleDto>>(item);
        }

        public async Task<EmployeeRoleDto> FindByIdAsync(string id)
        {
            var item = await _employeeRoleService.FindByIdAsync(id);
            //TODO: esse mapeamento retorna erro
            return _mapper.Map<Domain.Aggregates.EmployeeRole.Entities.EmployeeRole, EmployeeRoleDto>(item);
        }
    }
}
