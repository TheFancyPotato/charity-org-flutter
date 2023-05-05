import 'package:charity_org/views/start_views/start_view_model.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../log_in_screen/log_in_screen.dart';

class StartView extends StatefulWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  var data = StartViewModel();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // انيميشن سكرين تختفي بعد مدة معينة وراها تظهر صفحة تسجيل الدخول
      home: AnimatedSplashScreen(
        animationDuration: data.animationDuration,
         splashTransition: data.splashTransition,
          splash: data.logo,
          backgroundColor: data.backGroundcolor,
          nextScreen: SignupScreen()),
    );
  }
}
