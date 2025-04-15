import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String environment;

  const MainPage({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Current Environment: $environment",
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/MyHome');
            },
            color: Colors.blueAccent,
            child: const Text('Home'),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
