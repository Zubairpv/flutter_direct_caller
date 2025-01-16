import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_direct_caller_platform_interface.dart';

/// An implementation of [FlutterDirectCallerPlatform] that uses method channels.
class MethodChannelFlutterDirectCaller extends FlutterDirectCallerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_direct_caller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
