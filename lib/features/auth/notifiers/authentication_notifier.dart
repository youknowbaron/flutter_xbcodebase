import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xbcodebase/data/shared/service_providers.dart';
import 'package:xbcodebase/domain/base/api_result.dart';

import '../../../domain/repository/authentication_service.dart';

part 'authentication_notifier.g.dart';

@riverpod
class AuthenticationNotifier extends _$AuthenticationNotifier {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }

  AuthenticationService get _service => ref.read(authenticationServiceProvider);

  Future<void> logIn(String email, String password) async {
    final result = await _service.logIn(email, password);
    state = result.mapToAsyncValue();
  }

  Future<void> logOut() async {
    await _service.logOut();
    state = const AsyncValue.data(true);
  }
}
