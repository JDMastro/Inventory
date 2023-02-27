using MediatR;

namespace InventoryApp.Application.Models.Identity
{
    /// <summary>
    /// Esta clase representa los datos de la petición del usuario para la utenticación
    /// </summary>
    public class AuthRequest
    {
        /// <summary>
        /// Representa el correo del usuario
        /// </summary>
        public string Email { get; set; } = string.Empty;
        /// <summary>
        /// Representa la contraseña del usuario
        /// </summary>
        public string Password { get; set; } = string.Empty;
    }
}
