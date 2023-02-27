namespace InventoryApp.Application.Exceptions
{
    /// <summary>
    /// Representa la excepción de NotFoundException
    /// </summary>
    public class NotFoundException : ApplicationException
    {
        public NotFoundException(string name, object key) :
        base($"Entity \"{name}\" ({key}) no fue encontrado")
        {

        }
    }
}
