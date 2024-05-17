import 'package:flutter/material.dart';

class GetValidation {
  static String? psdValidation(String value) {
    if (value.isEmpty) {
      return 'Please enter a password';
    }

    return null;
  }

  static String? emaiValidation(TextEditingController controller) {
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
        .hasMatch(controller.text)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validate(String value, String field) {
    if (value.isEmpty) {
      return 'Please fill the $field';
    }

    return null;
  }
}
