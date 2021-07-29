﻿using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Interfaces.Repository;
using FluentValidation;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Services
{
    public class EmployeeRoleService : IEmployeeRoleService
    {
        private readonly IValidator<Entities.EmployeeRole> _validator;
        private readonly IEmployeeRoleRepository _employeeRoleRepository;
        public async Task<Entities.EmployeeRole> AddEmployeeRoleAsync(Entities.EmployeeRole employeeRole)
        {
            var validated = await _validator.ValidateAsync(employeeRole, opt => 
            {
                opt.IncludeRuleSets("new");
            });

            employeeRole.validationResult = validated;

            if (!employeeRole.validationResult.IsValid)
            {
                return employeeRole;
            }

           return await _employeeRoleRepository.Add(employeeRole);
        }
    }
}
