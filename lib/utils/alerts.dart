import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_brigadier_admin_panel/main.dart';

class Alert {
  static appToast(msg, {bool isError = false}) {
    // Get.snackbar(
    //   '',
    //   'You have a new message from John Doe.',
    //   backgroundColor: Colors.white,
    //   colorText: Colors.black,
    //   snackPosition: SnackPosition.BOTTOM,
    //   margin: EdgeInsets.all(16),
    //   borderRadius: 16,
    //   snackStyle: SnackStyle.FLOATING,
    //   animationDuration: Duration(milliseconds: 300),
    //   duration: Duration(seconds: 2),
    //
    //   // animationReverseDuration: Duration(milliseconds: 300),
    //   mainButton: TextButton(
    //     onPressed: () {
    //       // Action when the button on the snackbar is pressed
    //     },
    //     child: Text(
    //       'View',
    //       style: TextStyle(color: Colors.blue),
    //     ),
    //   ),
    // );
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: isError
          ? Theme.of(appContext).colorScheme.error
          : Theme.of(appContext).colorScheme.primary,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
}
