
import 'dart:async';

import 'package:universal_scanner_platform_interface/universal_scanner_platform_interface.dart';

class universal_scanner {
  static Future<String?> get platformVersion => universal_scannerPlatform.instance.platformVersion;
}
