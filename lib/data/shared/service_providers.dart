
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../impl/authentication_service_impl.dart';
import 'data_providers.dart';

final authenticationServiceProvider = Provider(
  (ref) => AuthenticationServiceImpl(ref.read(basicDioProvider), ref.read(storageProvider)),
);
