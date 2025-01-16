import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_direct_caller/flutter_direct_caller.dart';
import 'package:flutter_direct_caller/flutter_direct_caller_platform_interface.dart';
import 'package:flutter_direct_caller/flutter_direct_caller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterDirectCallerPlatform
    with MockPlatformInterfaceMixin
    implements FlutterDirectCallerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterDirectCallerPlatform initialPlatform = FlutterDirectCallerPlatform.instance;

  test('$MethodChannelFlutterDirectCaller is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterDirectCaller>());
  });

  test('getPlatformVersion', () async {
    FlutterPhoneDirectCaller flutterDirectCallerPlugin = FlutterPhoneDirectCaller();
    MockFlutterDirectCallerPlatform fakePlatform = MockFlutterDirectCallerPlatform();
    FlutterDirectCallerPlatform.instance = fakePlatform;

    expect(await flutterDirectCallerPlugin.getPlatformVersion(), '42');
  });
}
