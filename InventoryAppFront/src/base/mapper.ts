/**
 * Esta clase representa el mapper, que nos va a ayudar
 * a mappear los objetos del backend a los del frontend
 * @version 1.0.0 2023-02-22
 * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
 * @since 1.0.0
 */
export abstract class Mapper<I, O> {
  /**
   * Con esta función vamos a mappear los objetos que
   * responda el backend con los objetos del frontend
   * @param param el objeto que se va mappear
   * @returns Va a devolver el objeto mappeado
   * @version 1.0.0 2023-02-22
   * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
   * @since 1.0.0
   */
  abstract mapFrom(param: I): O;
  
   /**
   * Con esta función vamos a mappear los objetos que
   * responda el backend con los objetos del frontend
   * @param param el objeto que se va mappear
   * @returns Va a devolver el objeto mappeado
   * @version 1.0.0 2023-02-22
   * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
   * @since 1.0.0
   */
  abstract mapTo(param: O): I;
}
