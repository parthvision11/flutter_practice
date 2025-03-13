import 'dart:developer';

import 'package:flutter/services.dart';

class TimeUtils {
  static const MethodChannel _channel = MethodChannel('elapsed_realtime');

  static Future<int> getElapsedRealtime() async {
    try {
      final int elapsedTime = await _channel.invokeMethod('getElapsedRealtime');
      log("getElapsedRealtime(): $elapsedTime");
      return elapsedTime;
    } catch (e) {
      log("getElapsedRealtime(): Exception: $e");
      return DateTime.now().millisecondsSinceEpoch; // Fallback
    }
  }
}
