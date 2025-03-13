abstract class VerifyEmailDialogState {}

class VerifyEmailStatusInitial extends VerifyEmailDialogState {}

class VerifyEmailStatusLoading extends VerifyEmailDialogState {}

class VerifyEmailStatusSuccess extends VerifyEmailDialogState {
  String enteredEmail;

  VerifyEmailStatusSuccess(this.enteredEmail);
}

class VerifyEmailStatusFailure extends VerifyEmailDialogState {
  VerifyEmailStatusFailure();
}

class EnableOTPButton extends VerifyEmailDialogState {}

class DisableOTPButton extends VerifyEmailDialogState {}

class DataLoadedState extends VerifyEmailDialogState {}
