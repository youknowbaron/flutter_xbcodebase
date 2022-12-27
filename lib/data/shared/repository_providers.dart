import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:xbcodebase/data/impl/song_repository_impl.dart';
import 'package:xbcodebase/domain/repositories/authentication_repository.dart';
import 'package:xbcodebase/domain/repositories/song_repository.dart';

import '../impl/authentication_repository_impl.dart';
import 'data_providers.dart';

final authenticationRepositoryProvider = Provider<AuthenticationRepository>(
  (ref) => AuthenticationRepositoryImpl(
      ref.read(basicDioProvider), ref.read(storageProvider)),
);

final songRepositoryProvider = Provider<SongRepository>(
  (ref) => SongRepositoryImpl(ref.read(saavnDioProvider)),
);
