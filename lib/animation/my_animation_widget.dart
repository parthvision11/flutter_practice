import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';

class MyAnimationWidget extends StatelessWidget {
  const MyAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: LoopAnimationBuilder(
            builder: (context, double value, child) {
              return Transform.scale(
                // angle: pi * value,
                scale: value,
                // origin: Offset(100, 100),
                child: child,
              );
            },
            duration: const Duration(seconds: 2),
            tween: Tween<double>(begin: 0, end: 2),
            curve: Curves.linear,
            child: const Icon(Icons.notifications, size: 50),
          ),
        ),
      ),
    );
  }
}
