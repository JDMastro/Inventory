namespace InventoryApp.Application.Exceptions
{
    /// <summary>
    /// Representa la excepción de Unauthorized
    /// </summary>
    public class Unauthorized : ApplicationException
    {
        public Unauthorized() : base("Credenciales inválidas :'(")
        {
        }
    }
}
