import { Observable } from 'rxjs';
import { UserModel } from '@src/domain/models/user.model';


/**
 * Esta clase representa el userRepository
 * @version 1.0.0 2023-02-22
 * @author Jaime David Mastrodomenico Lopez <jdmlmastro9506@gmail.com>
 * @since 1.0.0
 */
export abstract class UserRepository {
    abstract login(params: {email: string, password: string}): Observable<UserModel>;
    abstract register(params: { name: string, surname: string, email: string, password: string }): Observable<UserModel>;
    abstract getUserProfile(): Observable<UserModel>;
}