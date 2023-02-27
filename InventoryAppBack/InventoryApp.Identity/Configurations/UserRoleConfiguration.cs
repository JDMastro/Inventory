using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace InventoryApp.Identity.Configurations
{
    /// <summary>
    /// Este clase representa la configuración de Users
    /// </summary>
    public class UserRoleConfiguration : IEntityTypeConfiguration<IdentityUserRole<string>>
    {
        /// <summary>
        /// Este método nos va ha ayudar a configurar la tabla roles en la base de datos
        /// </summary>
        /// <param name="builder">Representa las configuraciones de que se le puede aplicar a la tabla</param>
        public void Configure(EntityTypeBuilder<IdentityUserRole<string>> builder)
        {
            builder.HasData(
                new IdentityUserRole<string> { UserId = "17cc612c-3115-4b15-b763-ee0101456da2", RoleId = "07ad9f15-af57-44be-b6a7-17faeb924b14" },
                new IdentityUserRole<string> { UserId = "ae718866-eeac-40f9-8172-b0da22e03649", RoleId = "07ad9f15-af57-44be-b6a7-17faeb924b14" },
                new IdentityUserRole<string> { UserId = "9268f6de-f692-4c0e-a485-40dbba802af1", RoleId = "07ad9f15-af57-44be-b6a7-17faeb924b14" }
              );
        }
    }
}
