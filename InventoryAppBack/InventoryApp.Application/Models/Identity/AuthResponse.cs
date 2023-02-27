namespace InventoryApp.Application.Models.Identity
{
    /// <summary>
    /// Esta clase representa las respuesta que le envia el servidor al usuario
    /// en case de que se autenticara correctamente
    /// </summary>
    public class AuthResponse
    {
        /// <summary>
        /// Representa el identificador del usuario
        /// </summary>
        public string Id { get; set; }
        /// <summary>
        /// Representa el nickname del usuario
        /// </summary>
        public string Username { get; set; } = string.Empty;
        /// <summary>
        /// Representa el correo del usuario
        /// </summary>
        public string Email { get; set; } = string.Empty;
        /// <summary>
        /// Representa el token de autenticación del usuario
        /// </summary>
        public string Token { get; set; } = string.Empty;
    }
}
