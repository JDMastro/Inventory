/**
 * Esta interface representa la estructura de la respuesta
 * del servidor
 * @version 1.0.0 2023-02-22
 * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
 * @since 1.0.0
 */
export interface UserEntity {
  /**
   * Representa el id del usuario
   */
  id: string;
  /**
   * Representa el nickname del usuario
   */
  username: string;
  /**
   * Representa el correo del usuario
   */
  email: string;
  /**
   * Representa el token de acceso del usuario
   */
  token: string;
}
