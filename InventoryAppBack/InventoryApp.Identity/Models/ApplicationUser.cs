using Microsoft.AspNetCore.Identity;

namespace InventoryApp.Identity.Models
{
    /// <summary>
    /// Esta clase representa el modelo users
    /// </summary>
    public class ApplicationUser : IdentityUser
    {
        /// <summary>
        /// Representa el nombre del usuario
        /// </summary>
        public string Name { get; set; } = string.Empty;
        /// <summary>
        /// Representa el apellido del usuario
        /// </summary>
        public string LastName { get; set; } = string.Empty;
    }
}
