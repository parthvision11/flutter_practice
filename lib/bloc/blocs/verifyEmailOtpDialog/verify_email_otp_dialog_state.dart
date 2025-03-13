abstract class OtpDialogStats {}

class OtpDialogInitialStats extends OtpDialogStats {}

class OtpDialogLoadingStats extends OtpDialogStats {}

class OtpDialogSuccessStats extends OtpDialogStats {}

class OtpDialogFailureStats extends OtpDialogStats {}

///Timer Related Events
class TimerRunningState extends OtpDialogStats {
  final int timeLeft;

  TimerRunningState(this.timeLeft);
}

class TimerFinished extends OtpDialogStats {}

class EnableVerifyButton extends OtpDialogStats {}

class DisableVerifyButton extends OtpDialogStats {}

class EmailOtpSuccess extends OtpDialogStats {}

class EmailOtpFailure extends OtpDialogStats {}
