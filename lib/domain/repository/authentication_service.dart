import '../../core/api_result.dart';
import '../models/token_response.dart';

abstract class AuthenticationService {
  Future<ApiResult<TokenResponse>> logIn(String email, String password);
}
