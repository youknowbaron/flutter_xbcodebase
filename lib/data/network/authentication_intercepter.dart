import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants.dart';

class AuthenticationInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;
  final Dio _dio;

  AuthenticationInterceptor(this._dio, this._storage);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await _storage.read(key: kAccessTokenKey);
    final modifiedOptions = options
      ..headers.addAll(
        {
          'Authorization': 'Bearer $accessToken',
        },
      );
    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final errResponse = err.response;
    if (errResponse != null && errResponse.statusCode == 401) {
      // TODO: Handle HTTP Code 401
      handler.next(err);
    } else {
      handler.next(err);
    }
  }
}
