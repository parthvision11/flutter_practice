package com.parthpatel.flutter_practice

import android.os.SystemClock
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "elapsed_realtime"

    override fun configureFlutterEngine(flutterEngine: io.flutter.embedding.engine.FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getElapsedRealtime") {
                result.success(SystemClock.elapsedRealtime())
            } else {
                result.notImplemented()
            }
        }
    }
}
