using InventoryApp.Application.Models.Identity;

namespace InventoryApp.Application.Contracts.Identity
{
    public interface IUserService
    {
        Task<AuthResponse> Me(string id);
    }
}
