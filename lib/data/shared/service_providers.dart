import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/data/impl/song_service_impl.dart';
import 'package:xbcodebase/domain/repository/authentication_service.dart';
import 'package:xbcodebase/domain/repository/song_service.dart';

import '../impl/authentication_service_impl.dart';
import 'data_providers.dart';

final authenticationServiceProvider = Provider<AuthenticationService>(
  (ref) => AuthenticationServiceImpl(
      ref.read(basicDioProvider), ref.read(storageProvider)),
);

final songServiceProvider = Provider<SongService>(
  (ref) => SongServiceImpl(ref.read(saavnDioProvider)),
);
