/**
 * Esta interface representa el modelo de user
 * @version 1.0.0 2023-02-22
 * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
 * @since 1.0.0
 */
export interface UserModel {
  /**
   * Representa el id del usuario
   */
  _id: string;
  /**
   * Representa el nickname del usuario
   */
  _username: string;
  /**
   * Representa el correo del usuario
   */
  _email: string;
  /**
   * Representa el token de acceso del usuario
   */
  _token: string;

  /**
   * Representa el token de acceso del usuario
   */
  _typeOftoken: string;
}
