import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/shared/repository_providers.dart';
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
