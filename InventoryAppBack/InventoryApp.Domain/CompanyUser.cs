using InventoryApp.Domain.Common;

namespace InventoryApp.Domain
{
    /// <summary>
    /// Esta clase representa la entidad CompanyUser
    /// </summary>
    public class CompanyUser : BaseDomainModel
    {
        /// <summary>
        ///  Representa la identificación del usuario
        /// </summary>
        public int UserId { get; set; }

        /// <summary>
        /// Representa la identificación de company
        /// </summary>
        public int CompanyId { get; set; }

        /// <summary>
        /// Representa la relación que tiene con la entidad User
        /// </summary>
        public virtual User? User { get; set; }

        /// <summary>
        /// Representa la relación que tiene con la entidad Company
        /// </summary>
        public virtual Company? Company { get; set; }


    }
}
