import 'package:dio/dio.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/constants.dart';

abstract class AuthenticationRemoteDataSource {
  Future<void> signIn({required String email, required String password});
}

class AuthRemoteDataSrcImpl implements AuthenticationRemoteDataSource {
  AuthRemoteDataSrcImpl(this._dio);
  Dio _dio;

  // final http.Client _client;
  @override
  Future<void> signIn({required String email, required String password}) async {
    try {
      final response = await _dio.post('$baseUrl/api/login',
          data: {"email": email, "password": password});
          
      if (response.statusCode != 200) {
        throw ApiException(
            message: response.statusMessage ?? "Terjadi Kesalahan", statusCode: response.statusCode!);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw ApiException(
            message: 'Missing Password', statusCode: e.response!.statusCode!);
      }
    }
  }
}
