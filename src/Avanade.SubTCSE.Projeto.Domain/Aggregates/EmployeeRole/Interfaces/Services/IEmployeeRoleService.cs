﻿using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Services
{
    public interface IEmployeeRoleService
    {
        Task<Entities.EmployeeRole> AddEmployeeRoleAsync(Entities.EmployeeRole employeeRole);
    }
}
