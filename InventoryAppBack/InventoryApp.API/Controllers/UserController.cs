using InventoryApp.Application.Contracts.Identity;
using InventoryApp.Application.Models.Identity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;

namespace InventoryApp.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private IUserService _userService;

        public UserController(IUserService userService)
        {
            _userService = userService;
        }

        [HttpGet("me")]
        public async Task<ActionResult<AuthResponse>> Me() 
        {
            var id = Convert.ToString(User.FindFirstValue("uid"));
            return Ok(await _userService.Me(id));
        }
    }
}
