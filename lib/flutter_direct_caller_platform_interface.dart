import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_direct_caller_method_channel.dart';

abstract class FlutterDirectCallerPlatform extends PlatformInterface {
  /// Constructs a FlutterDirectCallerPlatform.
  FlutterDirectCallerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDirectCallerPlatform _instance = MethodChannelFlutterDirectCaller();

  /// The default instance of [FlutterDirectCallerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterDirectCaller].
  static FlutterDirectCallerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterDirectCallerPlatform] when
  /// they register themselves.
  static set instance(FlutterDirectCallerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
