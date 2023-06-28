import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homeScreen/home_screen.dart';

class LogInScreenModelView {
  late String user;
  late String password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Text welcome = const  Text("  مرحبا بك ",
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold));
  Icon welcomeIcon = Icon(
    Icons.waving_hand,
    size: 40,
    color: Colors.yellow.shade600,
  );
  String userText=" user name  ";
  String passwordText = " password ";
  String logInText = " Log in ";
  String userEmpty = " Please enter your user name  ";
  String userValid = " Please enter a valid user name ";
  String passwordValid = " Please enter a valid password ";
  String passwordEmpty = " Please enter your password ";

  TextStyle textStyle = const TextStyle(fontSize: 16, color: Colors.white);

  final RegExp userRegExp = RegExp( r'^[a-zA-Z0-9]+$');
  final RegExp passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');


  BorderRadius borderRadius = BorderRadius.circular(20);

  String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return userEmpty;
    } else if (!userRegExp.hasMatch(value)) {
      return userValid;
    }
    return null;
  }

  onSavedEmail(String? value) {
    user = value!;
  }

  String? passwordValidator(value) {
    if (value!.isEmpty) {
      return passwordEmpty;
    } else if (!passwordRegExp.hasMatch(value)) {
      return passwordValid;
    }
    return null;
  }

  onSavedPassword(value) {
    password = value!;
  }

  logIn(BuildContext context) async {
    bool isWaiting = true;
    await Future.delayed(const Duration(seconds: 2));
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      // Do something with the user's input
    }
  }
}
