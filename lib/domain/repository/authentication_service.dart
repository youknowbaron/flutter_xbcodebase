import 'package:xbcodebase/domain/models/api_result.dart';
import 'package:xbcodebase/domain/models/token_response.dart';

abstract class AuthenticationService {
  Future<ApiResult<TokenResponse>> logIn();
}
