using InventoryApp.Application.Contracts.Identity;
using InventoryApp.Application.Models.Identity;
using InventoryApp.Identity.Services;
using Microsoft.AspNetCore.Mvc;

namespace InventoryApp.API.Controllers
{
    /// <summary>
    /// Representa el controlador de Account
    /// </summary>
    [Route("api/[controller]/check")]
    [ApiController]
    public class ValidationController : Controller
    {
        private IAuthValidationService _authValidationService;

        public ValidationController(IAuthValidationService authValidationService)
        {
            _authValidationService = authValidationService;
        }

        [HttpGet("email/{email}")]
        public async Task<ActionResult<UniqueFieldResponse>> EmailCheck(string email)
        {
            return Ok(await _authValidationService.CheckExistEmail(email));
        }
    }
}
