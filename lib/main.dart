import 'package:flutter/material.dart';
import 'package:flutter_practice/create_player.dart';
import 'package:flutter_practice/environment_data.dart';
import 'package:flutter_practice/home/my_home_page.dart';
import 'package:flutter_practice/scanner/qr_scanner_screen.dart';

import 'app_config.dart';
import 'main_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp(env: 'Main'));
// }

Future<void> mainCommon({
  required String appName,
  required String baseUrl,
  required String flavor,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.initialize(
    appName: appName,
    baseUrl: baseUrl,
    flavor: flavor,
  );
  runApp(MyApp(env: flavor));
}

class MyApp extends StatelessWidget {
  final String env;

  const MyApp({super.key, required this.env});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp $env',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPage(environment: env),
      routes: {
        '/MyHome': (context) => const MyHomePage(title: 'Button Tap Counter'),
        '/CreatePlayer': (context) => const CreatePlayer(),
        '/environment': (context) => const EnvironmentData(),
        '/QRScanner': (context) => const QrScannerScreen(),
      },
    );
  }
}
