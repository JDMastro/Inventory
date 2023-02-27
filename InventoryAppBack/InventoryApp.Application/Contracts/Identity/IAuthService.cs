using InventoryApp.Application.Models.Identity;

namespace InventoryApp.Application.Contracts.Identity
{
    /// <summary>
    /// Interface es la que define los métodos para el servicio AuthService
    /// </summary>
    public interface IAuthService
    {
        /// <summary>
        /// Este método es para autenticar al usuario en el sistema
        /// </summary>
        /// <param name="request">son los datos que manda el usuario, las credenciales</param>
        /// <returns>los datos de que el usuario se autenticado correctamente</returns>
        Task<AuthResponse> Login(AuthRequest request);
        /// <summary>
        /// Este método es para registrar al usuario en el sistema
        /// </summary>
        /// <param name="request">Son los datos para registrar a los usuarios</param>
        /// <param name="role">El rol que va a tener el usuario</param>
        /// <returns>los datos de que el usuario se a registrado y autenticado correctamente</returns>
        Task<RegistrationResponse> Register(RegistrationRequest request, string role);
    }
}
