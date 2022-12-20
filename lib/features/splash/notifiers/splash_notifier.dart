import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/shared/service_providers.dart';
import '../../../domain/repository/authentication_service.dart';

part 'splash_notifier.g.dart';

@riverpod
class SplashNotifier extends _$SplashNotifier {
  AuthenticationService get _service => ref.read(authenticationServiceProvider);

  @override
  FutureOr<bool> build() async {
    return await _service.checkSession();
  }
}
