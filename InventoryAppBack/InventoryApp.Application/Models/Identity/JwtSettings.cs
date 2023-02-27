namespace InventoryApp.Application.Models.Identity
{
    /// <summary>
    /// Esta clase representa la configuración de JWT
    /// </summary>
    public class JwtSettings
    {
        /// <summary>
        /// Representa la llave que nos permite cifrar o decifrar el token
        /// </summary>
        public string Key { get; set; } = string.Empty;
        /// <summary>
        /// 
        /// </summary>
        public string Issuer { get; set; } = string.Empty;
        /// <summary>
        /// 
        /// </summary>
        public string Audience { get; set; } = string.Empty;
        /// <summary>
        /// Representa la duración en minuto que tendrá el token
        /// </summary>
        public double DurationInMinute { get; set; }
    }
}
