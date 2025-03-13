abstract class VerifyEmailDialogEvent {}

class DoVerifyEmailStatusEvent extends VerifyEmailDialogEvent {}

class GetOtpButtonStateEvent extends VerifyEmailDialogEvent {}

class VerifyOtpDataLoadedEvent extends VerifyEmailDialogEvent {}
