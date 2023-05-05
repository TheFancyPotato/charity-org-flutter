import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class StartViewModel {
  Image logo = Image.asset(
    "images/logo.jpg",
    height: double.maxFinite,
    width: double.maxFinite,
  );
  Color backGroundcolor= Colors.white;
  Duration   animationDuration = Duration(seconds: 10);
  SplashTransition splashTransition = SplashTransition.fadeTransition;

}