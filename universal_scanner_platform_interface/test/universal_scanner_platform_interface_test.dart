import 'package:flutter_test/flutter_test.dart';
import 'package:universal_scanner_platform_interface/universal_scanner_platform_interface.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

void main() {
  group('$universal_scannerPlatform', () {
    test('$MethodChanneluniversal_scanner is the default instance', () {
      expect(universal_scannerPlatform.instance, isA<MethodChanneluniversal_scanner>());
    });

    test('Cannot be implemented with `implements`', () {
      expect(() {
        universal_scannerPlatform.instance = Implementsuniversal_scannerPlatform();
      }, throwsA(isA<Error>()));
    });

    test('Can be extended', () {
      universal_scannerPlatform.instance = Extendsuniversal_scannerPlatform();
    });

    test('Can be mocked with `implements`', () {
      universal_scannerPlatform.instance = ImplementsWithIsMock();
    });
  });
}

class ImplementsWithIsMock extends Mock
    with MockPlatformInterfaceMixin
    implements universal_scannerPlatform {}

class Implementsuniversal_scannerPlatform extends Mock
    implements universal_scannerPlatform {}

class Extendsuniversal_scannerPlatform extends universal_scannerPlatform {}