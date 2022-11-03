import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/core/common_state.dart';

import '../../../data/impl/authentication_service_impl.dart';
import '../../../data/shared/data_providers.dart';
import '../notifiers/authentication_state_notifier.dart';

final _authenticationServiceProvider = Provider(
  (ref) => AuthenticationServiceImpl(ref.read(basicDioProvider)),
);

final authenticationProvider =
    StateNotifierProvider.autoDispose<AuthenticationStateNotifier, CommonState>(
  (ref) =>
      AuthenticationStateNotifier(ref.read(_authenticationServiceProvider)),
);
