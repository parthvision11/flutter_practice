import 'package:flutter/material.dart';
import 'package:flutter_practice/home/my_home_page.dart';
import 'package:flutter_practice/main_page.dart';

import 'timer/view/timer_page.dart';

void main() {
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
      routes: {
        '/': (context) => const MainPage(),
        '/MyHome': (context) => const MyHomePage(title: 'Button Tap Counter'),
        '/MyTimer': (context) => const TimerPage(title: 'Timer'),
      },
    );

    //   BlocProvider(
    //           create: (context) => CounterBloc(),
    //           child: const MyHomePage(title: 'Button Tap Counter'),
    //         ))
  }
}
