import 'package:xbcodebase/domain/core/common_state.dart';

import '../../../core/notifiers/common_state_notifier.dart';
import '../../../domain/repository/authentication_service.dart';

class AuthenticationStateNotifier extends CommonApiStateNotifier {
  final AuthenticationService _service;

  AuthenticationStateNotifier(this._service);

  Future<void> logIn(String email, String password) async {
    final result = await _service.logIn(email, password);
    assignApiResultToState(result);
  }

  Future<void> logOut() async {
    await _service.logOut();
    state = const CommonState.loaded(true);
  }
}
