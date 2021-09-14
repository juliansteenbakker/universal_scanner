library universal_scanner_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'src/method_channel_universal_scanner.dart';

export 'src/method_channel_universal_scanner.dart';

abstract class universal_scannerPlatform extends PlatformInterface {
  universal_scannerPlatform() : super(token: _token);

  static final Object _token = Object();

  static universal_scannerPlatform _instance = MethodChanneluniversal_scanner();

  static universal_scannerPlatform get instance => _instance;

  static set instance(universal_scannerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> get platformVersion async {
    throw UnimplementedError('platformVersion has not been implemented.');
  }
}
