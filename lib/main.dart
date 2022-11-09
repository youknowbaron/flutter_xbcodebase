import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'app_constants.dart';
import 'core/loggers/provider_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final path = (await getApplicationDocumentsDirectory()).path;
  Hive.init(path);

  await Hive.openBox(BoxKeys.settings);

  runApp(
    ProviderScope(
      observers: [ProviderLogger()],
      child: MyApp(),
    ),
  );
}
