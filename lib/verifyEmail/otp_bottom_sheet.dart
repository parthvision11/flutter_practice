import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../appUtilities/app_colors.dart';
import '../../appUtilities/defaultbutton.dart';
import '../../bloc/blocs/verifyEmailOtpDialog/verify_email_otp_dialog_bloc.dart';
import '../../bloc/blocs/verifyEmailOtpDialog/verify_email_otp_dialog_event.dart';
import '../../bloc/blocs/verifyEmailOtpDialog/verify_email_otp_dialog_state.dart';
import '../customWidgets/app_circular_loader.dart';

class OtpBottomSheet extends StatelessWidget {
  OtpBottomSheet({super.key, this.enteredEmail});

  final String? enteredEmail;
  late OtpDialogBloc _otpDialogBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpDialogBloc(context),
      child: BlocBuilder<OtpDialogBloc, OtpDialogStats>(
        builder: (otpDialogContext, state) {
          _otpDialogBloc = BlocProvider.of<OtpDialogBloc>(otpDialogContext);

          // String timerText = "Resend OTP";
          // if (state is TimerRunningState) {
          //   timerText = "${state.timeLeft} seconds";
          // } else if (state is TimerFinished) {
          //   timerText = "Resend OTP";
          // }

          return AnimatedPadding(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Verify Email Address',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                text: 'OTP has been sent to ',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontFamily: 'Inter',
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: '$enteredEmail',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12.0),
                            PinCodeTextField(
                              length: 6,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(10),
                                fieldHeight: 50,
                                fieldWidth: 50,
                                activeFillColor: Colors.white,
                                inactiveFillColor: Colors.white,
                                inactiveColor: Colors.grey,
                                inactiveBorderWidth: 1,
                                selectedColor: Colors.black,
                                selectedFillColor: Colors.white,
                                selectedBorderWidth: 1,
                                activeColor: Colors.grey,
                                activeBorderWidth: 1,
                              ),
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                              animationDuration: Duration(milliseconds: 300),
                              enableActiveFill: true,
                              autoFocus: true,
                              autoUnfocus: true,
                              cursorColor: Colors.grey,
                              enablePinAutofill: false,
                              keyboardType: TextInputType.number,
                              errorAnimationController: _otpDialogBloc.errorController,
                              controller: _otpDialogBloc.textEditingController,
                              onCompleted: (v) {
                                // Do something when completed
                                log("onCompleted: $v");
                              },
                              onChanged: (value) {
                                log("onChanged: $value");
                                _otpDialogBloc.add(OtpEnteredEvent());
                              },
                              beforeTextPaste: (text) {
                                return true;
                              },
                              appContext: context,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Didn't receive the OTP? Request a new one in",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2),
                            GestureDetector(
                              onTap: () {
                                if (state is TimerFinished) {
                                  log("OnTap of Resend Text Timer Finished");
                                  _otpDialogBloc.add(StartTimerEvent());
                                } else {
                                  log("OnTap of Resend Text");
                                }
                              },
                              child: Text(
                                _otpDialogBloc.timerText,
                                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(height: 30),
                            DefaultButton(
                              elevation: 0,
                              borderRadius: 8,
                              height: 50,
                              margin: EdgeInsets.zero,
                              width: MediaQuery.of(context).size.width,
                              color: _otpDialogBloc.isButtonEnabled ? primaryColor : Color(0xffE6E6E6),
                              onPressed: _otpDialogBloc.isButtonEnabled
                                  ? () {
                                      _otpDialogBloc.add(VerifyButtonPressedEvent(enteredEmail.toString()));
                                    }
                                  : null,
                              child: Text(
                                'Verify',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  color: _otpDialogBloc.isButtonEnabled ? Colors.white : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (state is OtpDialogLoadingStats)
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: AppLoaderProgress(),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
