using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace InventoryApp.Identity.Configurations
{
    /// <summary>
    /// Este clase representa la configuración de la entidad Rol
    /// </summary>
    public class RolesConfiguration : IEntityTypeConfiguration<IdentityRole>
    {
        /// <summary>
        /// Este método nos va ha ayudar a configurar la tabla roles en la base de datos
        /// </summary>
        /// <param name="builder">Representa las configuraciones de que se le puede aplicar a la tabla</param>
        public void Configure(EntityTypeBuilder<IdentityRole> builder)
        {
            builder.HasData(
                new IdentityRole
                {
                    Id = "07ad9f15-af57-44be-b6a7-17faeb924b14",
                    Name = "Administrator",
                    NormalizedName = "ADMINISTRATOR",
                }
              );
        }
    }
}
