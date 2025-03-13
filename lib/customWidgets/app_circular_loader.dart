import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../appUtilities/app_colors.dart';
import '../appUtilities/app_constants.dart';

class AppLoaderProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: !Platform.isIOS
              ? Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircularProgressIndicator(
                    color: primaryColor,
                  ),
                )
              : CupertinoActivityIndicator(
                  radius: 20,
                ),
        ),
      ),
    );
  }

  static showLoader(BuildContext context, {Color? color}) {
    if (!AppConstants.isLoaderShowing) {
      AppConstants.isLoaderShowing = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          barrierColor: Colors.transparent,
          builder: (BuildContext context) {
            return WillPopScope(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: !Platform.isIOS
                        ? Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircularProgressIndicator(
                              color: color ?? primaryColor,
                            ),
                          )
                        : CupertinoActivityIndicator(
                            radius: 20,
                          ),
                  ),
                ),
              ),
              onWillPop: () {
                AppConstants.isLoaderShowing = false;
                return Future.value(true);
              },
            );
          });
    }
  }

  static hideLoader(BuildContext context) {
    if (AppConstants.isLoaderShowing) {
      AppConstants.isLoaderShowing = false;
      Navigator.pop(context);
    }
  }
}
