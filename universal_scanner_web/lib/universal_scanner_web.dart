import 'dart:async';
// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:universal_scanner_platform_interface/universal_scanner_platform_interface.dart';

/// A web implementation of the universal_scanner plugin.
class universal_scannerPlugin extends universal_scannerPlatform {
  static void registerWith(Registrar? registrar) {
    universal_scannerPlatform.instance = universal_scannerPlugin();
  }

  @override
  Future<String?> get platformVersion async {
    final version = html.window.navigator.userAgent;
    return Future.value(version);
  }
}
