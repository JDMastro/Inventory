namespace InventoryApp.API.Errors
{
    /// <summary>
    /// Con esta clase le damos formato a las respuesta de las excepciones
    /// </summary>
    public class CodeErrorException : CodeErrorResponse
    {
        /// <summary>
        /// Representa el detalle de la excepción, donde se explixara porque occurrio la
        /// exepción
        /// </summary>
        public string? Details { get; set; }
        /// <summary>
        /// Representa una instacia de la clase CodeErrorException y inicializa los atributos
        /// </summary>
        /// <param name="statusCode">Representa el número del código con el que responde el servidor</param>
        /// <param name="message">Representa el mensaje de la excepción</param>
        /// <param name="details">
        /// Representa el detalle de la excepción, donde se explixara porque occurrio la
        /// exepción
        /// </param>
        public CodeErrorException(int statusCode,
            string? message = null, string?
            details = null) : base(statusCode, message)
        {
            Details = details;
        }
    }
}
