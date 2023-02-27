using InventoryApp.Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace InventoryApp.Infrastructure.Configurations
{
    /// <summary>
    /// Este clase representa la configuración de CompanyUsers
    /// </summary>
    public class CompanyUserConfiguration : IEntityTypeConfiguration<CompanyUser>
    {
        /// <summary>
        /// Este método nos va ha ayudar a configurar la tabla companyUser en la base de datos
        /// </summary>
        /// <param name="builder">Representa las configuraciones de que se le puede aplicar a la tabla</param>
        public void Configure(EntityTypeBuilder<CompanyUser> builder)
        {


            //Relación
            builder.HasOne(c => c.Company)
                .WithMany(c => c.CompanyUsers)
                .HasForeignKey(c => c.CompanyId);

            builder.HasOne(u => u.User)
                .WithMany(u => u.CompanyUsers)
                .HasForeignKey(u => u.UserId);

            builder.HasData(
                new CompanyUser { 
                    Id = 1,
                    CompanyId = 1,
                    UserId = 1
                },
                new CompanyUser
                {
                    Id = 2,
                    CompanyId = 1,
                    UserId = 2
                },
                new CompanyUser
                {
                    Id = 3,
                    CompanyId = 2,
                    UserId = 1
                },
                new CompanyUser
                {
                    Id = 4,
                    CompanyId = 2,
                    UserId = 3
                },
                new CompanyUser
                {
                    Id = 5,
                    CompanyId = 2,
                    UserId = 4, 
                });
        }
    }
}
