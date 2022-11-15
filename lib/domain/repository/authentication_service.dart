import '../core/api_result.dart';
import '../models/token_response.dart';

abstract class AuthenticationService {
  Future<ApiResult<TokenResponse>> logIn(String email, String password);
  Future<void> saveSession(String accessToken, String? refreshToken);
  Future<bool> checkSession();
  Future<void> logOut();
}
