namespace InventoryApp.API.Errors
{
    public class CodeErrorResponse
    {
        public int StatusCode { get; set; }
        public string? Message { get; set; }

        public CodeErrorResponse(int statusCode, string? message = null)
        {
            StatusCode = statusCode;
            Message = message ?? GetDefaultMessageStatusCode(statusCode);
        }

        private string GetDefaultMessageStatusCode(int code)
        {
            return StatusCode switch
            {
                400 => "La petición enviada tiene errores",
                401 => "No tienes autorización para acceder a este recurso",
                404 => "No se encontró el recurso solicitado",
                500 => "Se producieron errores en el servidor",
                _ => string.Empty,
            };
        }
    }
}
