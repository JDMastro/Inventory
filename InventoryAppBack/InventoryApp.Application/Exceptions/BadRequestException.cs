namespace InventoryApp.Application.Exceptions
{
    /// <summary>
    /// Representa la excepción de badRequestException
    /// </summary>
    public class BadRequestException : ApplicationException
    {
        public BadRequestException(string message) : base(message) { }
    }
}
