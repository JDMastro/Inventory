using FluentValidation.Results;

namespace InventoryApp.Application.Exceptions
{
    /// <summary>
    /// Representa la excepción de ValidationException
    /// </summary>
    public class ValidationException : ApplicationException
    {
        /// <summary>
        /// Representa una instancia de la clase ValidationException y inicializa la lista de errores
        /// </summary>
        public ValidationException() : base("Se presentaron uno o más errores de validación")
        {
            Errors = new Dictionary<string, string[]>();
        }

        /// <summary>
        /// Representa una instancia de la clase ValidationException y guarda los errores de las
        /// validaciones
        /// </summary>
        /// <param name="failure"></param>

        public ValidationException(IEnumerable<ValidationFailure> failure) : this()
        {
            Errors = failure.GroupBy(e => e.PropertyName, e => e.ErrorMessage)
                .ToDictionary(failureGroup => failureGroup.Key, failureGroup => failureGroup.ToArray());
        }
        /// <summary>
        /// Representa la lista de errores de las validaciones
        /// </summary>
        public IDictionary<string, string[]> Errors { get; }
    }
}
