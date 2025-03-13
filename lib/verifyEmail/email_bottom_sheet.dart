import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../appUtilities/app_colors.dart';
import '../../bloc/blocs/verifyEmailDialog/verify_email_dialog_bloc.dart';
import '../../bloc/blocs/verifyEmailDialog/verify_email_dialog_event.dart';
import '../../bloc/blocs/verifyEmailDialog/verify_email_dialog_state.dart';
import '../appUtilities/defaultbutton.dart';
import '../customWidgets/app_circular_loader.dart';

class VerifyEmailBottomSheet extends StatelessWidget {
  late VerifyEmailDialogBloc _verifyEmailDialogBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyEmailDialogBloc(context),
      child: BlocBuilder<VerifyEmailDialogBloc, VerifyEmailDialogState>(
        builder: (verifyEmailContext, state) {
          _verifyEmailDialogBloc = BlocProvider.of<VerifyEmailDialogBloc>(verifyEmailContext);

          return AnimatedPadding(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
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
                      SizedBox(height: 14),
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
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Email',
                              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              cursorColor: Colors.black,
                              controller: _verifyEmailDialogBloc.emailController,
                              // focusNode: _verifyEmailDialogBloc.focusNode,
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (_) {
                                _verifyEmailDialogBloc.add(GetOtpButtonStateEvent());
                              },
                              autofocus: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: textFieldBorderColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: textFieldBorderColor),
                                ),
                                hintText: 'Enter your email',
                              ),
                            ),
                            SizedBox(height: 27),
                            DefaultButton(
                              elevation: 0,
                              borderRadius: 8,
                              height: 50,
                              margin: EdgeInsets.zero,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Get OTP',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: _verifyEmailDialogBloc.emailController.text.isNotEmpty ? Colors.white : Colors.grey,
                                ),
                              ),
                              color: _verifyEmailDialogBloc.emailController.text.isNotEmpty ? primaryColor : Color(0xffE6E6E6),
                              onPressed: _verifyEmailDialogBloc.emailController.text.isNotEmpty
                                  ? () {
                                      _verifyEmailDialogBloc.add(DoVerifyEmailStatusEvent());
                                    }
                                  : null,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (state is VerifyEmailStatusLoading)
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
