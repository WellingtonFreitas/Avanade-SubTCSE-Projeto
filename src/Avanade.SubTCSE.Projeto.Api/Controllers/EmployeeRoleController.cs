﻿using Avanade.SubTCSE.Projeto.Application.Dtos.EmployeeRole;
using Avanade.SubTCSE.Projeto.Application.Interfaces.EmployeeRole;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Net.Mime;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Api.Controllers
{
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiVersion("1", Deprecated = false)]
    [ApiController]
    [ApiExplorerSettings(GroupName = "v1")]
    public class EmployeeRoleController : ControllerBase
    {
        private readonly IEmployeeRoleAppService _employeeRoleAppService;

        public EmployeeRoleController(IEmployeeRoleAppService employeeRoleAppService)
        {
            _employeeRoleAppService = employeeRoleAppService;
        }

        [HttpPost(Name = "EmployeeRole")]
        [Consumes(MediaTypeNames.Application.Json)]
        [Produces(MediaTypeNames.Application.Json)]
        [ProducesResponseType(typeof(EmployeeRoleDto),StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> CreateEmployeeRoleAsync([FromBody] EmployeeRoleDto employeeRoleDto)
        {
            var item = await _employeeRoleAppService.AddEmployeeRoleAsync(employeeRoleDto);
            if(!item.ValidateResult.IsValid)
            {
                return BadRequest(string.Join('\n', item.ValidateResult.Errors));
            }

            return Ok();
        }
        [HttpGet(Name = "EmployeeRoleGet")]
        [Produces(MediaTypeNames.Application.Json)]
        [ProducesResponseType(typeof(List<EmployeeRoleDto>), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> GetAllEmployeeRole()
        {
            var item = await _employeeRoleAppService.FindAllEmployeeRoleAsync();

            return Ok(item);
        }
        [HttpGet(template: "{id}")]
        [Produces(MediaTypeNames.Application.Json)]
        [ProducesResponseType(typeof(EmployeeRoleDto), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> GetById(string id)
        {
            var item = await _employeeRoleAppService.FindByIdAsync(id);

            return Ok(item);
        }

        [HttpDelete(template: "{id}")]
        [ProducesResponseType(typeof(EmployeeRoleDto), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> DeleteById(string id)
        {
            try
            {
                _employeeRoleAppService.DeleteById(id);
                return Ok();
            }
            catch (Exception ex )
            {
                return StatusCode(StatusCodes.Status500InternalServerError, ex.ToString());
            }
        }

    }
}
