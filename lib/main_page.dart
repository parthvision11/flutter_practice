import 'package:flutter/material.dart';

import 'app_config.dart';

class MainPage extends StatelessWidget {
  final String environment;
  final config = AppConfig.instance;

  MainPage({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Current Environment: $environment",
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/QRScanner');
                },
                color: Colors.blueAccent,
                child: const Text('Environment'),
              ),
              Text("Running in ${config.flavor} mode,\nhitting ${config.baseUrl}"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
