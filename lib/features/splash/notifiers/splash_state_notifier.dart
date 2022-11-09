import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xbcodebase/app_constants.dart';
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
