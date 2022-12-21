import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    noBoxingByDefault: true,
    colors: true,
    printEmojis: true,
  ),
);
