using InventoryApp.Application.Contracts.Identity;
using InventoryApp.Application.Models.Identity;
using InventoryApp.Identity.IdentityValidator;
using InventoryApp.Identity.Models;
using InventoryApp.Identity.Persistense;
using InventoryApp.Identity.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace InventoryApp.Identity
{
    /// <summary>
    /// Esta clase representa todas las configuraciones del modulo de infrastructure
    /// </summary>
    public static class IdentityServiceRegistration
    {
        /// <summary>
        /// Este método es para registrar todas la configuraciónes del modulo de infrastructure
        /// </summary>
        /// <param name="services">Representa la configuración para registrar todas las configuraciones</param>
        /// <param name="configuration">Representa la configuración appsettings.json del modulo api</param>
        /// <returns>Todos los servicios registrados</returns>
        public static IServiceCollection ConfigureIdentityService(this IServiceCollection services,
           IConfiguration configuration)
        {
            services.Configure<JwtSettings>(configuration.GetSection("JwtSettings"));
            services.AddDbContext<InventoryAppIdentityDbContext>(
                options => options.UseSqlServer(configuration.GetConnectionString("IdentityConnectionString"),
                b => b.MigrationsAssembly(typeof(InventoryAppIdentityDbContext).Assembly.FullName))
            );

            services.AddIdentity<ApplicationUser, IdentityRole>(options =>
            {
                options.Password.RequireDigit = false;
                options.Password.RequiredLength = 5;
                options.Password.RequireLowercase = true;
                options.Password.RequireUppercase = false;
                options.Password.RequireNonAlphanumeric = false;
                options.Password.RequireLowercase = false;
            })
                .AddEntityFrameworkStores<InventoryAppIdentityDbContext>()
                .AddDefaultTokenProviders();
                //.AddErrorDescriber<CustomIdentityErrorMessage>();
                


            services.AddTransient<IAuthService, AuthService>();
            services.AddTransient<IAuthValidationService, AuthValidationService>();
            services.AddTransient<IUserService, UserService>();

            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            }).AddJwtBearer(options =>
            {
                options.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    ValidateIssuer = true,
                    ValidateAudience = true,
                    ValidateLifetime = true,
                    ClockSkew = TimeSpan.Zero,
                    ValidIssuer = configuration["JwtSettings:Issuer"],
                    ValidAudience = configuration["JwtSettings:Audience"],
                    IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["JwtSettings:Key"]))
                };
            });

            return services;
        }
    }
}
