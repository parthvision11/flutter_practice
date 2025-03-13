import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../time_utils.dart';
import 'count_down_event.dart';
import 'count_down_state.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  Timer? _timer;
  Duration _remainingTime = Duration.zero;
  String targetDateString = "2025-03-06 22:25:50";
  late DateTime targetDateTime;

  CountdownBloc() : super(CountDownInitial()) {
    on<StartCountdownEvent>(_onStartCountdown);
    on<TickEvent>(_onTick);

    startTimerEvent();
  }

  void startTimerEvent(){
    targetDateTime = DateFormat("yyyy-MM-dd HH:mm").parse(targetDateString);
    Future.delayed(const Duration(milliseconds: 200), () async {
      Duration remainingTime = await getRealDurationUntil(targetDateString);
      add(StartCountdownEvent(remainingTime));
    });
  }

  // Duration getDurationUntil(String dateTimeString) {
  //   DateTime now = DateTime.now();
  //   DateTime targetDateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTimeString);
  //   return targetDateTime.difference(now);
  // }

  Future<Duration> getRealDurationUntil(String dateTimeString) async {
    int elapsedRealtimeNow = await TimeUtils.getElapsedRealtime(); // Get system uptime in ms
    DateTime targetDateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTimeString);

    // Convert elapsed time to an equivalent DateTime
    int systemBootTime = DateTime.now().millisecondsSinceEpoch - elapsedRealtimeNow;
    DateTime currentTime = DateTime.fromMillisecondsSinceEpoch(systemBootTime + elapsedRealtimeNow);

    return targetDateTime.difference(currentTime);
  }

  void _onStartCountdown(StartCountdownEvent event, Emitter<CountdownState> emit) async {
    _timer?.cancel();
    _remainingTime = event.duration;
    emit(CountdownTimerState(_remainingTime, formatDuration(_remainingTime)));

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime.inSeconds > 0) {
        _remainingTime = _remainingTime - const Duration(seconds: 1);
        add(TickEvent(_remainingTime));
      } else {
        _timer?.cancel();
      }
    });
  }

  void _onTick(TickEvent event, Emitter<CountdownState> emit) async {
    emit(CountdownTimerState(event.remainingTime, formatDuration(_remainingTime)));
  }

  String formatDuration(Duration duration) {
    DateTime now = DateTime.now();
    DateTime tomorrow = now.add(Duration(days: 1));
    DateTime nextDay = now.add(Duration(days: 2));

    if (targetDateTime.year == tomorrow.year && targetDateTime.month == tomorrow.month && targetDateTime.day == tomorrow.day) {
      return "Tomorrow"; // Show "Tomorrow" if the day is the next day
    } else if (targetDateTime.isAfter(nextDay)) {
      return DateFormat("d MMM").format(targetDateTime); // Show "30 Feb" format for future dates
    }

    int hours = duration.inHours;
    int minutes = duration.inMinutes.remainder(60);
    int seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return "${hours}h ${minutes}m"; // Example: "5h 2m"
    } else if (minutes > 0) {
      return "${minutes}m ${seconds}s"; // Example: "40m 30s"
    } else {
      return "${seconds}s"; // Example: "50s"
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
