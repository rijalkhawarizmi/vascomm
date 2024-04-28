import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasources/authentication_remote_data_source.dart';

class AuthenticationRepositoryImplementation extends AuthenticationRepository {
  AuthenticationRepositoryImplementation(this._authenticationRemoteDataSource);

  final AuthenticationRemoteDataSource _authenticationRemoteDataSource;

  @override
  ResultVoid signIn({required String email, required String password}) async {

    try {
      await _authenticationRemoteDataSource.signIn(
          email: email, password: password);
      return const Right(null);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }
}
