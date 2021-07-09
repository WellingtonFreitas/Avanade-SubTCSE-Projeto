using Avanade.SubTCSE.Projeto.Application.Dtos.Employee;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.Interfaces
{
    public interface IEmployeeAppService
    {
        void AddEmployee(EmployeeDto employeeDto);
    }
}
