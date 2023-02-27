using Microsoft.AspNetCore.Identity;


namespace InventoryApp.Identity.IdentityValidator
{
    public class CustomIdentityErrorMessage : IdentityErrorDescriber
    {
        public override IdentityError InvalidEmail(string? email)
        {
            return new IdentityError()
            {
                Code = "email",
                Description = "Debe escribir un correo valido"
            };
        }

        public override IdentityError PasswordRequiresUpper()
        {
            return new IdentityError()
            {
                Code = "password",
                Description = "La contraseña debe contener al menos una mayúscula"
            };
        }

        public override IdentityError PasswordRequiresNonAlphanumeric()
        {
            return new IdentityError()
            {
                Code = "password",
                Description = "La conraseña debe tener al menos un caracter especial[@-$]"
            };
        }

        public override IdentityError PasswordRequiresDigit()
        {
            return new IdentityError()
            {
                Code = "password",
                Description = "La conraseña debe tener al menos un número [0-9]"
            };
        }

        public override IdentityError PasswordRequiresLower()
        {
            return new IdentityError()
            {
                Code = "password",
                Description = "La conraseña debe tener al menos un caracter En minúscula"
            };
        }

        public override IdentityError PasswordTooShort(int length)
        {
            return new IdentityError()
            {
                Code = "password",
                Description = $"La conraseña debe tener al menos {length} digitos"
            };
        }

    }
}
