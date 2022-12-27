import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xbcodebase/data/shared/repository_providers.dart';

import '../../../domain/repositories/authentication_repository.dart';

part 'authentication_notifier.g.dart';

@riverpod
class AuthenticationNotifier extends _$AuthenticationNotifier {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }

  AuthenticationRepository get _repository =>
      ref.read(authenticationRepositoryProvider);

  Future<void> logIn(String email, String password) async {
    final result = await _repository.logIn(email, password);
    state = result.mapToAsyncValue();
  }

  Future<void> logOut() async {
    await _repository.logOut();
    state = const AsyncValue.data(true);
  }
}
