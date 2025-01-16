Flutter Direct Caller
A simple Flutter plugin to make direct phone calls programmatically on iOS and Android platforms.

Features
Call phone numbers directly without opening the dialer.
Cross-platform support for iOS and Android.
Easy to use with minimal setup.
Requires appropriate permissions for direct call functionality.
Installation
Add the plugin to your pubspec.yaml file:
dependencies:
  flutter_direct_caller:
    git:
      url: https://github.com/Zubairpv/flutter_direct_caller.git
Run the following command to get the package:
flutter pub get
Usage

Import the package and call the callNumber method:
import 'package:flutter_direct_caller/flutter_direct_caller.dart';

void main() async {
  // Example of making a direct call
  bool? result = await FlutterPhoneDirectCaller.callNumber("1234567890");
  print("Call initiated: $result");
}
Example Application
Check out the example app for implementation details:
https://github.com/Zubairpv/flutter_direct_caller
Permissions
Android
Add the following permission to your AndroidManifest.xml file:
<uses-permission android:name="android.permission.CALL_PHONE" />
iOS
No additional permissions are required, but make sure your app's Info.plist is configured properly for phone call-related capabilities.


