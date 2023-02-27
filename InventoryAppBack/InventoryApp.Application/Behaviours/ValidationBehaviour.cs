using FluentValidation;
using MediatR;

namespace InventoryApp.Application.Behaviours
{
    public class ValidationBehaviour<TRequest, TResponse> : IPipelineBehavior<TRequest, TResponse>
        where TRequest : IRequest<TResponse>
    {
        /// <summary>
        /// Representa una lista de errores de validación
        /// </summary>
        private readonly IEnumerable<IValidator<TRequest>> _validators;
        /// <summary>
        /// Con este método se crea una instacia de la clase ValidationBehaviour y inicializa los
        /// atributos de la clase
        /// </summary>
        /// <param name="validators">Representa una lista de errores de validación</param>
        public ValidationBehaviour(IEnumerable<IValidator<TRequest>> validators)
        {
            _validators = validators;
        }
        /// <summary>
        /// Con este método manejamos las excepciones de validación
        /// </summary>
        /// <param name="request">Representa las peticiónes que se le ha hecho al servidor</param>
        /// <param name="next">Representa una función que nos indica de que no ha ocurrido ninguna exepción</param>
        /// <param name="cancellationToken">Es un método que nos ayuda a parar la ejecución de la petición</param>
        /// <returns>La respuesta del servidor</returns>
        /// <exception cref="ValidationException">
        /// Este excepción ocurre cuando hay error de validación en las peticiones que realiza el
        /// usuario
        /// </exception>
        public async Task<TResponse> Handle(TRequest request, RequestHandlerDelegate<TResponse> next, CancellationToken cancellationToken)
        {
            if (_validators.Any())
            {
                var context = new ValidationContext<TRequest>(request);
                var validationResults = await Task.WhenAll(_validators
                            .Select(v => v.ValidateAsync(context, cancellationToken)));

                var failures = validationResults.SelectMany(r => r.Errors).Where(f => f != null).ToList();

                if (failures.Count > 0)
                {
                    throw new ValidationException(failures);
                }
            }
            return await next();
        }
    }
}
