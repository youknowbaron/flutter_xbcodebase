import '../../../core/notifiers/common_state_notifier.dart';
import '../../../domain/repository/authentication_service.dart';

class AuthenticationStateNotifier extends CommonStateNotifier {
  final AuthenticationService _service;

  AuthenticationStateNotifier(this._service);

  Future<void> logIn(String email, String password) async {
    final result = await _service.logIn(email, password);
    assignResultToState(result);
  }
}
