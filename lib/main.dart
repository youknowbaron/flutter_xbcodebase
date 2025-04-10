import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'package:memorise_vocabulary/firebase_options.dart';
import 'package:path_provider/path_provider.dart';

import 'application/app.dart';
import 'bridges.dart';
import 'core/loggers/provider_logger.dart';
import 'core/shared/core_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initilizes
  final path = (await getApplicationDocumentsDirectory()).path;
  Hive.init(path);
  final boxes = await Future.wait(AppBox.values.map((e) => Hive.openBox(e.name)));
  final settingsBox = boxes[0];
  await AppLocale.instance.initilize(settingsBox);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ProviderScope(
      overrides: [
        settingsBoxProvider.overrideWithValue(settingsBox),
      ],
      observers: [ProviderLogger()],
      child: const MyApp(),
    ),
  );
}
