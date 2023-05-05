import 'package:flutter/material.dart';
class LogInScreenModel {
  late  String email ;
  late String password ;
  String emailText = "email :  name@gmail.com";
  String sign_in_text = "sign in";
  String email_empty = "Please enter your email";
  String email_valid = "Please enter a valid email";
  String password_empty = "Please enter your password";
  String password_valid = "Please enter a valid password ";
  String passwordText = "password : uuUU66 ";
  Color backgroundcolor = Colors.white;
  TextStyle textStyle = TextStyle(fontSize: 16, color: Colors.white);
  final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  final RegExp passwordRegExp =
  RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
  Image logo =  Image.asset("images/logo.jpg");
  BorderRadius borderRadius = BorderRadius.circular(20);

}