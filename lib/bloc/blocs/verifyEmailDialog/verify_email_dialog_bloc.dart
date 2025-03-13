import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../verifyEmail/otp_bottom_sheet.dart';
import 'verify_email_dialog_event.dart';
import 'verify_email_dialog_state.dart';

class VerifyEmailDialogBloc extends Bloc<VerifyEmailDialogEvent, VerifyEmailDialogState> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController emailController = TextEditingController();

  VerifyEmailDialogBloc(BuildContext context) : super(VerifyEmailStatusInitial()) {
    ///Email Verify Status
    on<DoVerifyEmailStatusEvent>((event, emit) async {
      emit(VerifyEmailStatusLoading());
      try {
        final bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailController.text);
        if (emailValid) {
          // Wait for 5 seconds before emitting the next state
          Future.delayed(const Duration(seconds: 3), () {
            // emit(VerifyEmailStatusSuccess("parth.patel@vision11.in"));
            otpVerifyBottomSheet(context, "parth.patel@vision11.in");
          });
        } else {
          emit(VerifyEmailStatusFailure());
        }
      } catch (e) {
        emit(VerifyEmailStatusFailure());
      }
    });

    on<GetOtpButtonStateEvent>((event, emit) async {
      if (emailController.text.isNotEmpty) {
        emit(EnableOTPButton());
      } else {
        emit(DisableOTPButton());
      }
    });

    on<VerifyOtpDataLoadedEvent>((event, emit) {
      emit(DataLoadedState());
    });
  }

  void otpVerifyBottomSheet(BuildContext context, String enteredEmail) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
        ),
      ),
      builder: (BuildContext context) {
        return OtpBottomSheet(enteredEmail: enteredEmail);
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    focusNode.unfocus();
    return super.close();
  }
}
