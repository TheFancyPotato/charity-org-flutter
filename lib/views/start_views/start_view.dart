import 'package:charity_org/views/start_views/start_view_model.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../log_in_screen/login_screen.dart';

class StartView extends StatelessWidget {
   StartView({Key? key}) : super(key: key);

  final StartViewModel data = StartViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        animationDuration: data.animationDuration,
         splashTransition: data.splashTransition,
          splash: data.logo,
          backgroundColor: data.backGroundcolor,
          nextScreen: LogInScreen()),
    );
  }
}
