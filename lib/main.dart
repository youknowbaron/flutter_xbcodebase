import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'bridges.dart';
import 'core/loggers/provider_logger.dart';
import 'core/shared/core_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initilizes
  final path = (await getApplicationDocumentsDirectory()).path;
  Hive.init(path);
  final settingsBox = await Hive.openBox(BoxKeys.settings);
  await AppLocale.instance.initilize(settingsBox);

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
