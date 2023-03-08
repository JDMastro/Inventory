using InventoryApp.Application.Constants;
using InventoryApp.Application.Contracts.Identity;
using InventoryApp.Application.Exceptions;
using InventoryApp.Application.Models.Identity;
using InventoryApp.Identity.Models;
using Microsoft.AspNetCore.Identity;

namespace InventoryApp.Identity.Services
{
    public class UserService : IUserService
    {
        private readonly UserManager<ApplicationUser> _userManager;
        public UserService(UserManager<ApplicationUser> userManager)
        {
            _userManager = userManager;
        }
        public async Task<AuthResponse> Me(string id)
        {
            if(id == null)
            {
                throw new Unauthorized("Ha caducado la sesión :'(");
            }

            var user = await _userManager.FindByIdAsync(id);

            if(user== null) { throw new Unauthorized("Ha caducado la sesión :'("); }


            return new AuthResponse {
                Email = user.Email,
                Id= user.Id,
                Username = user.UserName,
                Token = "",
                TypeOfToken = TypeOfToken.TypeToken
            };
            //return await _userManager.FindByIdAsync(id);
        }
    }
}
