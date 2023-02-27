using InventoryApp.Domain;
using InventoryApp.Domain.Common;
using InventoryApp.Infrastructure.Configurations;
using Microsoft.EntityFrameworkCore;

namespace InventoryApp.Infrastructure.Persistence
{
    public class InventoryAppDbContext : DbContext
    {
        public InventoryAppDbContext(DbContextOptions<InventoryAppDbContext> options) : base(options)
        {
        }

        //SETEAER LOS VALORES DE AUDITORIA
        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
        {
            foreach (var entry in ChangeTracker.Entries<BaseDomainModel>())
            {
                switch (entry.State)
                {
                    case EntityState.Added:
                        entry.Entity.CreatedDate = DateTime.Now;
                        entry.Entity.CreatedBy = "SYSTEM";
                        break;
                    case EntityState.Modified:
                        entry.Entity.LastModifiedDate = DateTime.Now;
                        entry.Entity.LastModifiedBy = "SYSTEM";
                        break;
                }
            }
            return base.SaveChangesAsync(cancellationToken);
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.ApplyConfiguration(new UserConfiguration());
            builder.ApplyConfiguration(new CompanyConfiguration());
            builder.ApplyConfiguration(new CompanyUserConfiguration());
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Company> Company { get; set; }
        public DbSet<CompanyUser> CompanyUsers { get; set; }
    }
}
