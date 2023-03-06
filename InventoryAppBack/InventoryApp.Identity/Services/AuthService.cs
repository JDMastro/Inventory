using InventoryApp.Application.Constants;
using InventoryApp.Application.Contracts.Identity;
using InventoryApp.Application.Exceptions;
using InventoryApp.Application.Models.Identity;
using InventoryApp.Identity.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace InventoryApp.Identity.Services
{
    public class AuthService : IAuthService
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly JwtSettings _jwtSettings;

        public AuthService(UserManager<ApplicationUser> userManager,
            SignInManager<ApplicationUser> signInManager,
            IOptions<JwtSettings> jwtSettings)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _jwtSettings = jwtSettings.Value;
        }

        public async Task<AuthResponse> Login(AuthRequest request)
        {
            var user = await _userManager.FindByEmailAsync(request.Email);
            if (user == null)
            {
                //throw new Exception($"El usuario con el email {request.Email} no existe");
                throw new Unauthorized();
            }
            var result = await _signInManager.PasswordSignInAsync(user.UserName,
                                 request.Password, false, lockoutOnFailure: false);

            if (!result.Succeeded)
            {
                throw new Unauthorized();
            }

            var token = await GenerateToken(user);

            var response = new AuthResponse
            {
                Id = user.Id,
                Token = new JwtSecurityTokenHandler().WriteToken(token),
                Email = user.Email,
                Username = user.UserName
            };
            return response;

        }

        public async Task<RegistrationResponse> Register(RegistrationRequest request, string role)
        {
           
            var existingEmail = await _userManager.FindByEmailAsync(request.Email);
            if (existingEmail != null)
            {
                throw new BadRequestException($"{{'email': '{request.Email} ya esta registrado'}}");
            }
            var user = new ApplicationUser
            {
                Email = request.Email,
                Name = request.Name,
                LastName = request.Surname,
                EmailConfirmed = true,
                UserName = request.Email
            };
            var result = await _userManager.CreateAsync(user, request.Password);

            if (result.Succeeded)
            {
                await _userManager.AddToRoleAsync(user, role);
                var token = await GenerateToken(user);
                return new RegistrationResponse
                {
                    Email = user.Email,
                    Token = new JwtSecurityTokenHandler().WriteToken(token),
                    Id = user.Id,
                    Username = user.UserName
                };
            }

            throw new Exception($"{result.Errors}");
        }

        /// <summary>
        /// Con este método se va a construir el token de autenticación
        /// </summary>
        /// <param name="user">los datos del usuario que quiere autenticarse</param>
        /// <returns>un string con el token de autenticación</returns>
        private async Task<JwtSecurityToken> GenerateToken(ApplicationUser user)
        {
            var usersClaims = await _userManager.GetClaimsAsync(user);
            var roles = await _userManager.GetRolesAsync(user);
            var rolesClaims = new List<Claim>();

            foreach (var role in roles)
            {
                rolesClaims.Add(new Claim(ClaimTypes.Role, role));
            }

            var claims = new[]
            {
                new Claim(JwtRegisteredClaimNames.Sub, user.UserName),
                //new Claim("username", user.UserName), no se debe hacer de esta manera
                new Claim(JwtRegisteredClaimNames.Email, user.Email),
                new Claim(CustomClaimsType.Uid, user.Id),
            }.Union(usersClaims).Union(rolesClaims);
            var symmetricSecurityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.Key));
            var signingCredentials = new SigningCredentials(symmetricSecurityKey, SecurityAlgorithms.HmacSha256);
            var jwtSecurityToken = new JwtSecurityToken(
                   issuer: _jwtSettings.Issuer,
                   audience: _jwtSettings.Audience,
                   claims: claims,
                   expires: DateTime.UtcNow.AddMinutes(_jwtSettings.DurationInMinute),
                   signingCredentials: signingCredentials
                );
            return jwtSecurityToken;
        }
    }
}
