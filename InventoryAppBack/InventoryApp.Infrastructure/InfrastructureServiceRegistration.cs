using InventoryApp.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace InventoryApp.Infrastructure
{
    public static class InfrastructureServiceRegistration
    {
        public static IServiceCollection AddInfrastructureServices(this IServiceCollection services,
           IConfiguration configuration)
        {
            services.AddDbContext<InventoryAppDbContext>(options =>
                      options.UseSqlServer(configuration.GetConnectionString("ConnectionStrings")));


            return services;
        }
    }
}
