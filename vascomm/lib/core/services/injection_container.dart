import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../src/authentication/data/datasources/authentication_remote_data_source.dart';
import '../../src/authentication/data/repositories/authentication_repository_implementation.dart';
import '../../src/authentication/domain/repositories/authentication_repository.dart';
import '../../src/authentication/domain/usecases/create_user.dart';
import '../../src/authentication/presentation/bloc/authentication_bloc.dart';

final sl = GetIt.instance;
final sls = GetIt.instance;
Dio _dio = Dio();

Future<void> init() async {
  sls..registerLazySingleton(() => _dio);

  sls
    ..registerFactory(
        () => AuthenticationBloc(signIn: sls()))
    ..registerLazySingleton(() => SignIn(sls()))
    ..registerLazySingleton<AuthenticationRepository>(
        () => AuthenticationRepositoryImplementation(sls()))
    ..registerLazySingleton<AuthenticationRemoteDataSource>(
        () => AuthRemoteDataSrcImpl(sls()));
}
