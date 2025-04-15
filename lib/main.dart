import 'package:flutter/material.dart';
import 'package:flutter_practice/create_player.dart';
import 'package:flutter_practice/home/my_home_page.dart';

import 'main_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp(env: 'Main'));
// }

Future<void> mainCommon({required String env}) async {
  WidgetsFlutterBinding.ensureInitialized();

  // You can load different config files or URLs based on `env` here
  runApp(MyApp(env: env));
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
      },
    );

    //   BlocProvider(
    //           create: (context) => CounterBloc(),
    //           child: const MyHomePage(title: 'Button Tap Counter'),
    //         ))
  }
}
