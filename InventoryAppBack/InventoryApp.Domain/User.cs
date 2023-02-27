using InventoryApp.Domain.Common;

namespace InventoryApp.Domain
{
    /// <summary>
    /// Esta clase representa la entidad User
    /// </summary>
    public class User : BaseDomainModel
    {
       
        /// <summary>
        /// Representa la identificación del usuario
        /// </summary>
        public string UserIdentity { get; set; } = string.Empty;

        /// <summary>
        /// Representa la relación que tiene con la entidad CompanyUser
        /// </summary>
        public IList<CompanyUser> CompanyUsers { get; set; }
        
    }
}
