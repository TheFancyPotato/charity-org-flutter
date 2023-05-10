import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class StartViewModel {
  
  Image logo = Image.asset(
    "assets/images/logo.jpg",
    height: double.maxFinite,
    width: double.maxFinite,
  );

  Color backGroundcolor= Colors.white;

  Duration animationDuration = const Duration(seconds: 1);

  SplashTransition splashTransition = SplashTransition.fadeTransition;

}