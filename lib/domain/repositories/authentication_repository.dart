import '../base/api_result.dart';

abstract class AuthenticationRepository {
  Future<ApiResult<bool>> signInWithGoogle();
  Future<ApiResult<bool>> signUp({
    required String name,
    required String email,
    required String password,
  });
  Future<ApiResult<bool>> signIn(String email, String password);

  Future<void> saveSession(String accessToken, String? refreshToken);
  Future<bool> checkSession();
  Future<void> logOut();
}
