import 'dart:async';
import 'dart:developer';

import 'package:flutter/services.dart';

class FlutterCriticalAlertPermissionIos {
  static const MethodChannel _channel =
  const MethodChannel('flutter_critical_alert_permission_ios');

  static Future<void> requestCriticalAlertPermission() async {
    await _channel.invokeMethod('requestCriticalAlertPermission');
  }
}
