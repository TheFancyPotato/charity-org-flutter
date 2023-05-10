import 'package:flutter/material.dart';

import '../homeScreen/HomeScreen.dart';

class LogInScreenModelView {
  late String email;
  late String password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  String emailText = " Email ";
  String passwordText = " Password ";
  String logInText = " Log in ";
  String emailEmpty = " Please enter your email ";
  String emailValid = " Please enter a valid email ";
  String passwordValid = " Please enter a valid password ";
  String passwordEmpty = " Please enter your password ";

  Color backgroundcolor = Colors.white;

  TextStyle textStyle = const TextStyle(fontSize: 16, color: Colors.white);

  final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  final RegExp passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  BorderRadius borderRadius = BorderRadius.circular(20);

  String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return emailEmpty;
    } else if (!emailRegExp.hasMatch(value)) {
      return emailValid;
    }
    return null;
  }

  onSavedEmail(String? value) {
    email = value!;
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

  logIn(BuildContext context) async{
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
