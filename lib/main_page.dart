import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/MyHome');
              },
              color: Colors.blueAccent,
              enableFeedback: false,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightElevation: 0,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              height: 40,
              child: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/MyTimer');
              },
              color: Colors.blueAccent,
              enableFeedback: false,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightElevation: 0,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              height: 40,
              child: const Text(
                'Timer',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
