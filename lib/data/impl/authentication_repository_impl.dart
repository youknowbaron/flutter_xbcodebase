import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:memorise_vocabulary/bridges.dart';
import 'package:memorise_vocabulary/core/loggers/logger.dart';
import 'package:memorise_vocabulary/domain/base/api_failure.dart';

import '../../domain/models/token_response.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../../tunnels.dart';

part 'authentication_repository_impl.g.dart';

class AuthenticationRepositoryImpl with DioBroker implements AuthenticationRepository {
  AuthenticationRepositoryImpl(this._dio, this._auth, this._secureStorage, this._settingsBox);

  final Dio _dio;
  final FirebaseAuth _auth;
  final FlutterSecureStorage _secureStorage;
  final Box _settingsBox;

  @override
  Future<ApiResult<bool>> signInWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

      if (await _saveUserCredential(userCredential)) {
        return const ApiResult.data(true);
      }
      return const ApiResult.failure();
    } catch (e) {
      return const ApiResult.failure(ApiFailure.unknown());
    }
  }

  Future<bool> _saveUserCredential(UserCredential credential) async {
    logger.d(credential.toString());
    final accessToken = credential.credential?.accessToken;
    final refreshToken = credential.user?.refreshToken;
    if (accessToken != null) {
      await saveSession(accessToken, refreshToken);
      await _settingsBox.put(PKeys.signInMethod, SignInMethod.google.name);
      return true;
    }
    return false;
  }

  @override
  Future<ApiResult<bool>> signUp(
      {required String name, required String email, required String password}) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      logger.d(result);
      return const ApiResult.data(true);
    } on FirebaseAuthException catch (e) {
      return ApiResult.failure(ApiFailure.other(errorCode: e.code, message: e.message, error: e));
    } catch (e) {
      return const ApiResult.failure(ApiFailure.unknown());
    }
  }

  @override
  Future<ApiResult<bool>> signIn(String email, String password) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (result.user?.emailVerified == false) {
        return const ApiResult.failure(
          ApiFailure.other(
              errorCode: 'email-not-verified',
              message:
                  'We have sent a verification email. Please verify your email before continuing to sign in.'),
        );
      }
      if (await _saveUserCredential(result)) {
        return const ApiResult.data(true);
      }
      return const ApiResult.failure(ApiFailure.unknown());
    } on FirebaseAuthException catch (e) {
      return ApiResult.failure(ApiFailure.other(errorCode: e.code, message: e.message, error: e));
    } catch (e) {
      return const ApiResult.failure(ApiFailure.unknown());
    }
  }

  @override
  Future<void> saveSession(String accessToken, String? refreshToken) async {
    await _secureStorage.write(key: kAccessTokenKey, value: accessToken);
    await _secureStorage.write(key: kRefreshTokenKey, value: refreshToken);
  }

  @override
  Future<bool> checkSession() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final accessToken = await _secureStorage.read(key: kAccessTokenKey);
    return accessToken != null && accessToken.isNotEmpty;
  }

  @override
  Future<void> logOut() async {
    if (_settingsBox.get(PKeys.signInMethod) == SignInMethod.google.name) {
      await GoogleSignIn().signOut();
    }
    await _secureStorage.delete(key: kAccessTokenKey);
    await _secureStorage.delete(key: kRefreshTokenKey);
  }
}

@riverpod
AuthenticationRepository authenticationRepository(AuthenticationRepositoryRef ref) {
  return AuthenticationRepositoryImpl(
    ref.read(basicDioProvider),
    ref.read(firebaseAuthProvider),
    ref.read(secureStorageProvider),
    ref.read(settingsBoxProvider),
  );
}
