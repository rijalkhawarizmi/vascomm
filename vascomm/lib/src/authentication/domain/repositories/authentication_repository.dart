
import '../../../../core/utils/typedef.dart';
abstract class AuthenticationRepository{
 const AuthenticationRepository();

 ResultVoid signIn({required String email,required String password});


}