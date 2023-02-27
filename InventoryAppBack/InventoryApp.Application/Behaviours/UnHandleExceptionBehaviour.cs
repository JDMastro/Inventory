using MediatR;
using Microsoft.Extensions.Logging;

namespace InventoryApp.Application.Behaviours
{
    /// <summary>
    /// Representan los comportamientos de las excepciones
    /// </summary>
    /// <typeparam name="TRequest">Representa las peticiónes que se le ha hecho al servidor</typeparam>
    /// <typeparam name="TResponse">Representa la repuesta del servidor</typeparam>
    public class UnHandleExceptionBehaviour<TRequest, TResponse> : IPipelineBehavior<TRequest, TResponse>
        where TRequest : IRequest<TResponse>
    {
        /// <summary>
        /// Representa logger que nos va a ayudar seguimiento a la aplicación
        /// </summary>
        private readonly ILogger<TRequest> _logger;

        /// <summary>
        /// Con este método se crea una instacia de la clase UnHandleExceptionBehaviour y inicializa los
        /// atributos de la clase
        /// </summary>
        /// <param name="logger">Representa logger que nos va a ayudar seguimiento a la aplicación</param>
        public UnHandleExceptionBehaviour(ILogger<TRequest> logger) => _logger = logger;

        /// <summary>
        /// Con este método se va a manejar todas las excepciones
        /// </summary>
        /// <param name="request">Representa las peticiónes que se le ha hecho al servidor</param>
        /// <param name="next">Representa una función que nos indica de que no ha ocurrido ninguna exepción</param>
        /// <param name="cancellationToken">Es un método que nos ayuda a parar la ejecución de la petición</param>
        /// <returns>Una respuesta al cliente</returns>
        public async Task<TResponse> Handle(TRequest request, RequestHandlerDelegate<TResponse> next, CancellationToken cancellationToken)
        {
            try
            {
                return await next();
            }
            catch (Exception ex)
            {
                var requestName = typeof(TRequest).Name;
                _logger.LogError(ex,
                    "Application Request: Sucedio una excepcion {name} {@Request}",
                    requestName, request);
                throw;
            }
        }
    }
}
