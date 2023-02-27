using FluentValidation;
using InventoryApp.Application.Behaviours;
using MediatR;
using Microsoft.Extensions.DependencyInjection;
using System.Reflection;

namespace InventoryApp.Application
{
    /// <summary>
    /// Esta clase representa todas las configuraciones del modulo de Application
    /// </summary>
    public static class ApplicationServiceRegistration
    {
        /// <summary>
        /// Este método es para registrar todas la configuraciónes del modulo de Application
        /// </summary>
        /// <param name="services">Representa la configuración para registrar todas las configuraciones</param>
        /// <param name="configuration">Representa la configuración appsettings.json del modulo api</param>
        /// <returns>Todos los servicios registrados</returns>
        public static IServiceCollection AddApplicationServices(this IServiceCollection services)
        {
            services.AddAutoMapper(Assembly.GetExecutingAssembly());
            services.AddValidatorsFromAssembly(Assembly.GetExecutingAssembly());
            services.AddMediatR(Assembly.GetExecutingAssembly());
            services.AddTransient(typeof(IPipelineBehavior<,>), typeof(UnHandleExceptionBehaviour<,>));
            services.AddTransient(typeof(IPipelineBehavior<,>), typeof(ValidationBehaviour<,>));

            return services;
        }
    }
}
