import 'package:xbcodebase/domain/core/common_state.dart';

import '../../../core/notifiers/common_state_notifier.dart';
import '../../../../domain/repository/authentication_service.dart';

class SplashStateNotifier extends CommonStateNotifier {
  final AuthenticationService _service;

  SplashStateNotifier(this._service);

  Future<void> checkSession() async {
    final result = await _service.checkSession();
    state = CommonState.loaded(result);
  }
}
