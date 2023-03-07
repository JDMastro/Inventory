namespace InventoryApp.Application.Models.Identity
{
    /// <summary>
    /// Esta clase representa las respuesta que le envia el servidor al usuario
    /// en case de que se registrara correctamente
    /// </summary>
    public class RegistrationResponse
    {
        /// <summary>
        /// Representa la identificación del usuario
        /// </summary>
        public string Id { get; set; } = string.Empty;
       
    }
}
