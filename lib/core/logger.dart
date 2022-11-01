import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    colors: true, // Colorful log messages
    printEmojis: true, // Print an emoji for each log messageShould each log print contain a timestamp
  ),
);
