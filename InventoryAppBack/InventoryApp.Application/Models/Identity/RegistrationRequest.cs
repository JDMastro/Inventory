namespace InventoryApp.Application.Models.Identity
{
    /// <summary>
    /// Esta clase representa los datos de la petición del usuario para el registro
    /// </summary>
    public class RegistrationRequest
    {
        /// <summary>
        /// Representa el nombre del usuario
        /// </summary>
        public string Name { get; set; } = string.Empty;
        /// <summary>
        /// Representa el apellido del usuario
        /// </summary>
        public string Surname { get; set; } = string.Empty;
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
