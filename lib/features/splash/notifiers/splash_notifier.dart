import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/impl/authentication_repository_impl.dart';
import '../../../domain/repositories/authentication_repository.dart';

part 'splash_notifier.g.dart';

@riverpod
class SplashNotifier extends _$SplashNotifier {
  AuthenticationRepository get _repository =>
      ref.read(authenticationRepositoryProvider);

  @override
  FutureOr<bool> build() async {
    return await _repository.checkSession();
  }
}
