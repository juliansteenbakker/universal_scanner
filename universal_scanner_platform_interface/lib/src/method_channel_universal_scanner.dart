import 'package:flutter/services.dart';

import '../universal_scanner_platform_interface.dart';

class MethodChanneluniversal_scanner extends universal_scannerPlatform {
  static const MethodChannel _channel =
      const MethodChannel('universal_scanner');

  @override
  Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}