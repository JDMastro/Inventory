import { Observable } from 'rxjs';

/**
 * Esta interface representa los casos de usos y nos va
 * a ayudar con los features de la aplicación
 * @version 1.0.0 2023-02-22
 * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
 * @since 1.0.0
 */
export interface UseCase<S, T> {
  /**
   * Con esta función podremos ejecutar los features
   * @param params los parametros del feature
   * @version 1.0.0 2023-02-22
   * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
   * @since 1.0.0
   */
  execute(params: S): Observable<T>;
}
