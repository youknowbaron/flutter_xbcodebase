import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/shared/service_providers.dart';
import '../../../domain/core/common_state.dart';
import '../notifiers/authentication_state_notifier.dart';

final authenticationProvider =
    StateNotifierProvider.autoDispose<AuthenticationStateNotifier, CommonState>(
  (ref) => AuthenticationStateNotifier(ref.read(authenticationServiceProvider)),
);
