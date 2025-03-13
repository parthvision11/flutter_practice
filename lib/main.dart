import 'package:flutter/material.dart';
import 'package:flutter_practice/create_player.dart';
import 'package:flutter_practice/home/my_home_page.dart';

import 'countDownTimer/count_down_screen.dart';
import 'ipAddress/device_ip_address.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DeviceIpAddress(),
      routes: {
        // '/': (context) => const MainPage(),
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
