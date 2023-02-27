using InventoryApp.Identity.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace InventoryApp.Identity.Configurations
{
    /// <summary>
    /// Este clase representa la configuración de Users
    /// </summary>
    public class UsersConfiguration : IEntityTypeConfiguration<ApplicationUser>
    {
        /// <summary>
        /// Este método nos va ha ayudar a configurar la tabla roles en la base de datos
        /// </summary>
        /// <param name="builder">Representa las configuraciones de que se le puede aplicar a la tabla</param>
        public void Configure(EntityTypeBuilder<ApplicationUser> builder)
        {
            var hasher = new PasswordHasher<ApplicationUser>();




            builder.HasData(
                  new ApplicationUser
                  {
                      Id = "17cc612c-3115-4b15-b763-ee0101456da2",
                      Email = "admin@localhost.com",
                      NormalizedEmail = "ADMIN@LOCALHOST.COM",
                      Name = "Jaime",
                      LastName = "Mastrodomenico Lopez",
                      UserName = "jdml",
                      NormalizedUserName = "JDML",
                      PasswordHash = hasher.HashPassword(null, "Jaime9506$"),
                      EmailConfirmed = true,
                  },
                   new ApplicationUser
                   {
                       Id = "ae718866-eeac-40f9-8172-b0da22e03649",
                       Email = "driver@localhost.com",
                       NormalizedEmail = "DRIVER@LOCALHOST.COM",
                       Name = "moises",
                       LastName = "Mastrodomenico Lopez",
                       UserName = "meml",
                       NormalizedUserName = "MEML",
                       PasswordHash = hasher.HashPassword(null, "Jaime9506$"),
                       EmailConfirmed = true,
                   },
                   new ApplicationUser
                   {
                       Id = "9268f6de-f692-4c0e-a485-40dbba802af1",
                       Email = "secretary@localhost.com",
                       NormalizedEmail = "SECRETARY@LOCALHOST.COM",
                       Name = "sebastian",
                       LastName = "Mastrodomenico Lopez",
                       UserName = "sml",
                       NormalizedUserName = "SML",
                       PasswordHash = hasher.HashPassword(null, "Jaime9506$"),
                       EmailConfirmed = true,
                   }
                );
        }
    }
}
