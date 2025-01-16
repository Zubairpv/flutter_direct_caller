import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_direct_caller/flutter_direct_caller_platform_interface.dart';

class FlutterPhoneDirectCaller {
  static const MethodChannel _channel =
      MethodChannel('flutter_phone_direct_caller');

  static Future<bool?> callNumber(String number) async {
   
    return await _channel.invokeMethod(
      'callNumber',
      <String, Object>{
        'number': number,
      },
    );
    
  }

  Future<String?> getPlatformVersion() {
    return FlutterDirectCallerPlatform.instance.getPlatformVersion();
  }
}
