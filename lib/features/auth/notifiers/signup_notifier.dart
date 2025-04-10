import 'package:memorise_vocabulary/data/impl/authentication_repository_impl.dart';
import 'package:memorise_vocabulary/domain/repositories/authentication_repository.dart';
import 'package:memorise_vocabulary/tunnels.dart';

part 'signup_notifier.g.dart';

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  @override
  FutureOr<bool?> build() async {
    return null;
  }

  AuthenticationRepository get _repository => ref.read(authenticationRepositoryProvider);

  void signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    final result = await _repository.signUp(
      name: name,
      email: email,
      password: password,
    );
    state = result.mapToAsyncValue();
  }
}
