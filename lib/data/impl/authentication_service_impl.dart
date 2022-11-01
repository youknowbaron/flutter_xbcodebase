import 'package:dio/dio.dart';
import 'package:xbcodebase/data/network/dio_broker.dart';
import 'package:xbcodebase/domain/models/api_result.dart';
import 'package:xbcodebase/domain/repository/authentication_service.dart';

import '../../domain/models/token_response.dart';

class AuthenticationServiceImpl
    with DioBroker
    implements AuthenticationService {
  AuthenticationServiceImpl(this._dio);

  final Dio _dio;

  @override
  Future<ApiResult<TokenResponse>> logIn() async {
    // return mapResponseToResult(call, (data) => null)
    return ApiResult.data(TokenResponse(
      accessToken: 'accessToken',
      requestToken: 'requestToken',
    ));
  }
}
