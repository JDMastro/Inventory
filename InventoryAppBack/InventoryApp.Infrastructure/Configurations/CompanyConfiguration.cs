using InventoryApp.Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace InventoryApp.Infrastructure.Configurations
{
    /// <summary>
    /// Este clase representa la configuración de Company
    /// </summary>
    public class CompanyConfiguration : IEntityTypeConfiguration<Company>
    {
        /// <summary>
        /// Este método nos va ha ayudar a configurar la tabla company en la base de datos
        /// </summary>
        /// <param name="builder">Representa las configuraciones de que se le puede aplicar a la tabla</param>
        public void Configure(EntityTypeBuilder<Company> builder)
        {
            //Unique Key
            builder.HasIndex(x => x.Name)
                .IsUnique();

            //Unique Key
            builder.HasIndex(x => x.Nit)
                .IsUnique();


            builder.HasData(
                new Company
                {
                    Id= 1,
                    Address = "TestAddress",
                    City = "TestCity",
                    Country = "TestCountry",
                    Name = "TESTNAME",
                    Nit = "TESTNIT"
                },
                new Company
                {

                    Id = 2,
                    Address = "TestAddress2",
                    City = "TestCity2",
                    Country = "TestCountry2",
                    Name = "TESTNAME2",
                    Nit = "TESTNIT2"
                });
        }
    }
}
