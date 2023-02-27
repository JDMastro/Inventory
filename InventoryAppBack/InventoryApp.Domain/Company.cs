using InventoryApp.Domain.Common;

namespace InventoryApp.Domain
{
    /// <summary>
    /// Esta clase representa la entidad Company
    /// </summary>
    public class Company : BaseDomainModel
    {  
        /// <summary>
        /// Representa el nombre de la compañia
        /// </summary>
        public string Name { get; set; } = string.Empty;

        /// <summary>
        /// Representa el nit de la compañia
        /// </summary>
        public string Nit { get; set; } = string.Empty;

        /// <summary>
        /// Representa la dirección de la compañia
        /// </summary>
        public string Address { get; set; } = string.Empty;

        /// <summary>
        /// Representa la ciudad donde esta ubicada de la compañia
        /// </summary>
        public string City { get; set; } = string.Empty;

        /// <summary>
        /// Representa la pais donde esta ubicada de la compañia
        /// </summary>
        public string Country { get; set; } = string.Empty;

        /// <summary>
        /// Representa la relación que tiene con la entidad CompanyUser
        /// </summary>
        public IList<CompanyUser> CompanyUsers { get; set; }
    }
}
