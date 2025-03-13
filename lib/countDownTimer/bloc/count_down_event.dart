// 🟢 Events
abstract class CountdownEvent {}

class StartCountdownEvent extends CountdownEvent {
  final Duration duration;

  StartCountdownEvent(this.duration);
}

class TickEvent extends CountdownEvent {
  Duration remainingTime;

  TickEvent(this.remainingTime);
}
