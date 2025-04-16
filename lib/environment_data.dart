import 'dart:developer';

import 'package:flutter/material.dart';

import 'app_config.dart';

class EnvironmentData extends StatefulWidget {
  const EnvironmentData({super.key});

  @override
  State<EnvironmentData> createState() => _EnvironmentDataState();
}

class _EnvironmentDataState extends State<EnvironmentData> {
  final config = AppConfig.instance;

  @override
  void initState() {
    super.initState();
    log("Environment: ${config.flavor}");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Environment Data"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("Running in ${config.flavor} mode,\nAPI: ${config.baseUrl}"),
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
