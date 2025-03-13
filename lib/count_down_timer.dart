import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice/countDownTimer/time_utils.dart';

class CountDownTimer extends StatefulWidget {
  CountDownTimer(this.matchStartTime);
  final DateTime matchStartTime;

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {

  Duration remainingTime = Duration.zero;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        DateTime adjustedTime = TimeUtils.getElapsedRealtime() as DateTime;
        remainingTime = widget.matchStartTime.difference(adjustedTime);
      });
    });
  }

  String formatDuration(Duration duration) {
    int hours = duration.inHours;
    int minutes = duration.inMinutes.remainder(60);
    int seconds = duration.inSeconds.remainder(60);
    return "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      remainingTime.isNegative ? "Match Started" : formatDuration(remainingTime),
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
