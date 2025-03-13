import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_practice/verifyEmail/email_bottom_sheet.dart';
import 'package:focus_detector_v2/focus_detector_v2.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FocusDetector(
        onFocusLost: () {
          log(
            'Focus Lost.'
            '\nTriggered when either [onVisibilityLost] or [onForegroundLost] '
            'is called.'
            '\nEquivalent to onPause() on Android or viewDidDisappear() on iOS.',
          );
        },
        onFocusGained: () {
          log(
            'Focus Gained.'
            '\nTriggered when either [onVisibilityGained] or [onForegroundGained] '
            'is called.'
            '\nEquivalent to onResume() on Android or viewDidAppear() on iOS.',
          );
        },
        onVisibilityLost: () {
          log(
            'Visibility Lost.'
            '\nIt means the widget is no longer visible within your app.',
          );
        },
        onVisibilityGained: () {
          log(
            'Visibility Gained.'
            '\nIt means the widget is now visible within your app.',
          );
        },
        onForegroundLost: () {
          log(
            'Foreground Lost.'
            '\nIt means, for example, that the user sent your app to the background by opening '
            'another app or turned off the device\'s screen while your '
            'widget was visible.',
          );
        },
        onForegroundGained: () {
          log(
            'Foreground Gained.'
            '\nIt means, for example, that the user switched back to your app or turned the '
            'device\'s screen back on while your widget was visible.',
          );
        },
        child: Scaffold(
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
                    emailBottomSheet(context);
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
                    'Show Model Bottom Sheet',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 5),
                _materialButton(context, "Create Player", "/CreatePlayer"),
              ],
            ),
          ),
        ));
  }

  void emailBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
        ),
        isScrollControlled: true,
        builder: (BuildContext context) {
          return VerifyEmailBottomSheet();
        });
  }

  void showFirstBottomSheet(BuildContext context) {
    FocusNode _focusNode = FocusNode();
    TextEditingController _emailController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the First BottomSheet'),
            TextField(
              cursorColor: Colors.black,
              controller: _emailController,
              focusNode: _focusNode,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: Colors.white10)),
                hintText: 'Enter your email',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the first BottomSheet
                showSecondBottomSheet(context);
              },
              child: Text('Go to Second BottomSheet'),
            ),
          ],
        ),
      ),
    );
  }

  void showSecondBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Second BottomSheet'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the second BottomSheet
              },
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _materialButton(BuildContext context, String buttonText, String route) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      color: Colors.blueAccent,
      enableFeedback: false,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightElevation: 0,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      height: 40,
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
