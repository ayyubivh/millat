import 'package:flutter/material.dart';

class Validators {
  BuildContext context;

  Validators(this.context);

  String? emailValidator(String? val) {
    if (val!.isEmpty) {
      return 'Enter email address';
    } else if (!val.contains('@') || !val.contains('.')) {
      return 'Enter valid Email';
    } else {
      return null;
    }
  }

  String? phoneNumberValidator(String? val) {
    if (val!.isEmpty) {
      return 'Enter Your Phone';
    } else if (!isNumeric(val)) {
      return 'Phone is invalid';
    } else {
      return null;
    }
  }

  String? passwordValidator(String? val) {
    if (val!.isEmpty) {
      return 'Enter your Password';
    } else {
      return null;
    }
  }

  String? emptyFieldValidator(String? val) {
    if (val!.isEmpty) {
      return 'This field cannot be empty';
    } else {
      return null;
    }
  }

  String? fullNameValidator(String? val) {
    if (val!.isEmpty) {
      return 'Full name cannot be empty';
    } else {
      return null;
    }
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}
