import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:xbcodebase/core/constants.dart';

import '../../domain/core/api_result.dart';
import '../../domain/models/token_response.dart';
import '../../domain/repository/authentication_service.dart';
import '../network/api/dio_broker.dart';

class AuthenticationServiceImpl
    with DioBroker
    implements AuthenticationService {
  AuthenticationServiceImpl(this._dio, this._storage);

  final Dio _dio;
  final FlutterSecureStorage _storage;

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
      converter: (data) async => TokenResponse.fromJson(data['data']),
      onSuccess: (data) {
        _storage.write(key: kAccessTokenKey, value: data.accessToken);
      },
    );
  }

  @override
  Future<void> saveSession(String accessToken, String? refreshToken) async {
    await _storage.write(key: kAccessTokenKey, value: accessToken);
    await _storage.write(key: kRefreshTokenKey, value: refreshToken);
  }

  @override
  Future<bool> checkSession() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final accessToken = await _storage.read(key: kAccessTokenKey);
    return accessToken != null && accessToken.isNotEmpty;
  }

  @override
  Future<void> logOut() async {
    await _storage.delete(key: kAccessTokenKey);
    await _storage.delete(key: kRefreshTokenKey);
  }
}
