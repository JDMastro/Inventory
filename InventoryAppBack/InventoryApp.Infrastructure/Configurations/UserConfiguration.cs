using InventoryApp.Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace InventoryApp.Infrastructure.Configurations
{
    /// <summary>
    /// Este clase representa la configuración de Users
    /// </summary>
    public class UserConfiguration : IEntityTypeConfiguration<User>
    {
        /// <summary>
        /// Este método nos va ha ayudar a configurar la tabla user en la base de datos
        /// </summary>
        /// <param name="builder">Representa las configuraciones de que se le puede aplicar a la tabla</param>
        public void Configure(EntityTypeBuilder<User> builder)
        {
            //Unique Key
            builder.HasIndex(x => x.UserIdentity)
                .IsUnique();


            builder.HasData(
                new User
                {
                    Id  = 1,
                    UserIdentity = "17cc612c-3115-4b15-b763-ee0101456da2"
                },
                new User
                {
                    Id = 2,
                    UserIdentity = "105ee73f-457b-43f6-b072-76b938d17032"
                },
                new User
                {
                    Id = 3,
                    UserIdentity = "9268f6de-f692-4c0e-a485-40dbba802af1"
                },
                new User
                {
                    Id = 4,
                    UserIdentity = "ae718866-eeac-40f9-8172-b0da22e03649"
                });
        }
    }
}
