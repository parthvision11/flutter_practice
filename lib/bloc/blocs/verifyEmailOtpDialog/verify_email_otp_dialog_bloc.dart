import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'verify_email_otp_dialog_event.dart';
import 'verify_email_otp_dialog_state.dart';

class OtpDialogBloc extends Bloc<OtpDialogEvent, OtpDialogStats> {
  /// Declared variables
  final FocusNode focusNode = FocusNode();
  final TextEditingController textEditingController = TextEditingController();
  final StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
  bool isButtonEnabled = false;

  static const int initialTime = 30;
  late int timeLeft;
  Timer? _timer;
  String timerText = "Resend OTP";

  OtpDialogBloc(BuildContext context) : super(OtpDialogInitialStats()) {
    ///Resend OTP
    on<OtpDialogEventResendCode>((event, emit) async {
      emit(OtpDialogLoadingStats());
      try {
        final bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(event.enteredEmail);
        if (emailValid) {
          // await Future.delayed(const Duration(seconds: 5));
          Future.delayed(const Duration(seconds: 5), () {
            emit(OtpDialogSuccessStats());
          });
        } else {
          emit(OtpDialogFailureStats());
        }
      } catch (e) {
        emit(OtpDialogFailureStats());
      }
    });

    ///Handle events
    on<StartTimerEvent>(_onStartTimer);
    on<TickEvent>(_onTick);
    on<TimerCompleteEvent>(_onComplete);

    on<OtpEnteredEvent>((event, emit) async {
      if (textEditingController.text.length == 6) {
        if (_timer!.isActive) {
          Future.delayed(const Duration(milliseconds: 100), () {
            isButtonEnabled = true;
            emit(EnableVerifyButton());
          });
        } else {
          isButtonEnabled = true;
          emit(EnableVerifyButton());
        }
      } else {
        if (_timer!.isActive) {
          Future.delayed(const Duration(milliseconds: 100), () {
            isButtonEnabled = false;
            emit(DisableVerifyButton());
          });
        } else {
          isButtonEnabled = false;
          emit(DisableVerifyButton());
        }
      }
    });

    on<VerifyButtonPressedEvent>((event, emit) async {
      if (_timer != null && _timer!.isActive) {
        await Future.delayed(const Duration(milliseconds: 200));
        emit(OtpDialogLoadingStats());
      } else {
        emit(OtpDialogLoadingStats());
      }
      try {
        // String userId = await AppPrefrence.getString(AppConstants.SHARED_PREFERENCE_USER_ID);
        // String mOtp = textEditingController.text.toString();
        // GeneralRequest emailOtpRequest = new GeneralRequest(email: event.email, user_id: userId, otp: mOtp);
        // final client = ApiClient(AppRepository.dio);
        // LoginResponse verifyOtpResponse = await client.verifyEmailOtp(emailOtpRequest);
        // if (verifyOtpResponse.status == 1) {
        //   MethodUtils.showSuccess(context, verifyOtpResponse.message!);
        //   Navigator.pop(context);
        //   Navigator.pop(context);
        //   emit(EmailOtpSuccess());
        // } else {
        //   MethodUtils.showError(context, verifyOtpResponse.message!);
        //   emit(EmailOtpFailure());
        // }
        await Future.delayed(const Duration(seconds: 5));
        emit(EmailOtpSuccess());
      } catch (e) {
        emit(EmailOtpFailure());
      }
    });

    /// Initialize timer on bloc creation
    add(StartTimerEvent());
  }

  /// Handle Start Timer Event
  void _onStartTimer(StartTimerEvent event, Emitter<OtpDialogStats> emit) {
    emit(TimerRunningState(initialTime)); // Emit initial running state
    _startTimer(emit); // Start the timer
  }

  /// Handle Tick Event
  void _onTick(TickEvent event, Emitter<OtpDialogStats> emit) {
    emit(TimerRunningState(event.timeLeft)); // Emit updated time
  }

  /// Handle Timer Complete Event
  void _onComplete(TimerCompleteEvent event, Emitter<OtpDialogStats> emit) {
    emit(TimerFinished());
  }

  /// Start Timer Logic
  void _startTimer(Emitter<OtpDialogStats> emit) {
    timeLeft = initialTime;
    const oneSec = Duration(seconds: 1);

    _timer?.cancel(); // Cancel any existing timer
    _timer = Timer.periodic(oneSec, (Timer timer) {
      if (timeLeft == 0) {
        timerText = "Resend OTP";
        add(TimerCompleteEvent());
        timer.cancel();
      } else {
        timeLeft--;
        timerText = "$timeLeft seconds";
        add(TickEvent(timeLeft));
      }
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    focusNode.dispose();
    textEditingController.dispose();
    errorController.close();
    return super.close();
  }
}
