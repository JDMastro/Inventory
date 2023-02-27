using InventoryApp.Identity.Configurations;
using InventoryApp.Identity.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace InventoryApp.Identity.Persistense
{
    /// <summary>
    /// Esta clase representa el contexto de la base de datos de seguridad
    /// </summary>
    public class InventoryAppIdentityDbContext : IdentityDbContext<ApplicationUser>
    {
        /// <summary>
        /// Con este método se crea una instacia de la clase InventoryAppDbContext y inicializa
        /// la cadena de conexión a la base de datos
        /// </summary>
        /// <param name="options">Representa la configuración para la conexión a la base de datos</param>
        public InventoryAppIdentityDbContext(DbContextOptions options) : 
            base(options) { }

        /// <summary>
        /// Este método es que nos ayuda a aplicar todas las configuraciones de las entidades
        /// </summary>
        /// <param name="builder">Representa las configuraciones de que se le puede aplicar a la tabla</param>
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.ApplyConfiguration(new RolesConfiguration());
            builder.ApplyConfiguration(new UsersConfiguration());
            builder.ApplyConfiguration(new UserRoleConfiguration());
        }
    }
}
