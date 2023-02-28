using InventoryApp.Application.Models.Identity;

namespace InventoryApp.Application.Contracts.Identity
{
    public interface IAuthValidationService
    {
        /// <summary>
        /// Este método es para verificar si ya existe el email
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        Task<UniqueFieldResponse> CheckExistEmail(string email);
    }
}
