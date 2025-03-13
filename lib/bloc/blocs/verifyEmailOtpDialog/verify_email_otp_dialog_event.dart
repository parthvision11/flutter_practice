abstract class OtpDialogEvent {}

class OtpDialogEventResendCode extends OtpDialogEvent {
  String enteredEmail;

  OtpDialogEventResendCode(this.enteredEmail);
}

class OtpDialogEventVerifyCode extends OtpDialogEvent {}

///Timer related Events
class StartTimerEvent extends OtpDialogEvent {}

class TickEvent extends OtpDialogEvent {
  final int timeLeft;

  TickEvent(this.timeLeft);
}

class TimerCompleteEvent extends OtpDialogEvent {}

class OtpEnteredEvent extends OtpDialogEvent {}

class VerifyButtonPressedEvent extends OtpDialogEvent {
  String email;

  VerifyButtonPressedEvent(this.email);
}
