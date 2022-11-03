import 'package:dio/dio.dart';

import '../../core/api_result.dart';
import '../../domain/models/token_response.dart';
import '../../domain/repository/authentication_service.dart';
import '../network/dio_broker.dart';

class AuthenticationServiceImpl
    with DioBroker
    implements AuthenticationService {
  AuthenticationServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<ApiResult<TokenResponse>> logIn(String email, String password) async {
    final call = _dio.post(
      '/api/v1/login',
      data: {
        'email': email,
        'password': password,
      },
    );
    return mapResponseToResult(
      call,
      converter: (data) => TokenResponse.fromJson(data['data']),
    );
  }
}
