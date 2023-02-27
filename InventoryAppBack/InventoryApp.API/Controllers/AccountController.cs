using InventoryApp.Application.Constants;
using InventoryApp.Application.Contracts.Identity;
using InventoryApp.Application.Models.Identity;
using Microsoft.AspNetCore.Mvc;

namespace InventoryApp.API.Controllers
{
    /// <summary>
    /// Representa el controlador de Account
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        /// <summary>
        /// Representa los servicios de autenticación
        /// </summary>
        private IAuthService _authService;

        /// <summary>
        /// Representa una instacia de la clase AccountController y inicializa el atributo de la clase
        /// </summary>
        /// <param name="authService">
        /// Variable que contiene todos los método para el manejo de las cuentas de los usuarios
        /// </param>
        public AccountController(IAuthService authService)
        {
            _authService = authService;
        }

        /// <summary>
        /// Con este método se podra autenticar en el sistema
        /// </summary>
        /// <param name="request">los datos para la autenticación del usuario</param>
        /// <returns>los datos de que la autenticación a sido correcta</returns>
        [HttpPost("Login")]
        public async Task<ActionResult<AuthResponse>> Login([FromBody] AuthRequest request)
        {
            return Ok(await _authService.Login(request));
        }

        /// <summary>
        /// Con este método se podra registrar en el sistema
        /// </summary>
        /// <param name="request">los datos para el registro del usuario</param>
        /// <returns>Los datos de que el registro a sido correcto</returns>
        [HttpPost("Register")]
        public async Task<ActionResult<RegistrationResponse>> Register([FromBody] RegistrationRequest request)
        {
            return Ok(await _authService.Register(request, RoleConstants.RoleAdministrador));
        }
    }
}
