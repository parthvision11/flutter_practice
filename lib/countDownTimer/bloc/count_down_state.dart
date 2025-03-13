abstract class CountdownState {}

class CountDownInitial extends CountdownState {}

class CountdownTimerState extends CountdownState {
  final Duration remainingTime;
  final String formattedTime;
  CountdownTimerState(this.remainingTime, this.formattedTime);
}
