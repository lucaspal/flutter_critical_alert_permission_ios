
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCriticalAlertPermissionIos {
  static const MethodChannel _channel =
      const MethodChannel('flutter_critical_alert_permission_ios');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> requestCriticalAlertPermission() async {
    final String version = await _channel.invokeMethod('requestCriticalAlertPermission');
    return version;
  }
}
