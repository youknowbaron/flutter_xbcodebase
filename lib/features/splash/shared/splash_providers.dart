import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/shared/service_providers.dart';
import '../../../domain/core/common_state.dart';
import '../notifiers/splash_state_notifier.dart';

final splashProvider =
    StateNotifierProvider.autoDispose<SplashStateNotifier, CommonState>(
  (ref) => SplashStateNotifier(ref.read(authenticationServiceProvider)),
);
