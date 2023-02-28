using InventoryApp.Application.Contracts.Identity;
using InventoryApp.Application.Models.Identity;
using InventoryApp.Identity.Models;
using Microsoft.AspNetCore.Identity;

namespace InventoryApp.Identity.Services
{
    public class AuthValidationService : IAuthValidationService
    {
        private readonly UserManager<ApplicationUser> _userManager;
        public AuthValidationService(UserManager<ApplicationUser> userManager)
        {
            _userManager = userManager;
        }

        public async Task<UniqueFieldResponse> CheckExistEmail(string email)
        {
            var emailCheck = await _userManager.FindByEmailAsync(email);

            if (emailCheck == null)
            {
                return new UniqueFieldResponse { IsUnique = false };
            }
            return new UniqueFieldResponse { IsUnique = true };
        }
    }
}
