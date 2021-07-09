using Avanade.SubTCSE.Projeto.Application.Dtos.Base;
using System;

namespace Avanade.SubTCSE.Projeto.Application.Dtos.Employee
{
    public class EmployeeDto : BaseDto
    {
        public string PrimeiroNome { get; init; }

        public string Sobrenome { get; init; }

        public DateTime Aniversario { get; init; }
        public bool Ativo { get; init; }

        public decimal Salario { get; init; }

        public EmployeeRole.EmployeeRoleDto Cargo { get; set; }
    }
}
