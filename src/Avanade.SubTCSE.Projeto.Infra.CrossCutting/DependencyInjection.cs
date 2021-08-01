using Avanade.SubTCSE.Projeto.Application.Interfaces.EmployeeRole;
using Avanade.SubTCSE.Projeto.Application.Services.EmployeeRole;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Entities;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Interfaces.Repository;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Interfaces.Services;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Services;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Validators;
using Avanade.SubTCSE.Projeto.Domain.Base.Repository.MongoDb;
using Avanade.SubTCSE.Projeto.Infra.Data.Repositories.Base.MongoDb;
using Avanade.SubTCSE.Projeto.Infra.Data.Repositories.EmployeeRole;
using FluentValidation;
using Microsoft.Extensions.DependencyInjection;

namespace Avanade.SubTCSE.Projeto.Infra.CrossCutting
{
    public static class DependencyInjection
    {
        public static void AddRegisterDepencenciesInjections(this IServiceCollection service)
        {
            service.AddAutoMapper(typeof(Application.AutoMapperConfigs.Profiles.configs));

            service.AddSingleton<IMongoDBContext, MongoDbContext>();
            service.AddScoped<IEmployeeRoleAppService, EmployeeRoleAppService>();
            service.AddScoped<IEmployeeRoleService, EmployeeRoleService>();
            service.AddScoped<IEmployeeRoleRepository, EmployeeRoleRespository>();
            service.AddTransient<IValidator<EmployeeRole>, EmployeeRoleValidator>();
        }
    }
}
