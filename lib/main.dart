import 'package:charity_org/views/Family_details/family_details_view.dart';
import 'package:charity_org/views/Family_details/family_information/family_information_view.dart';
import 'package:charity_org/views/add_family/SecondScreen/AddFamilyViewSecondScreen.dart';
import 'package:charity_org/views/add_family/FirstScreen/add_family_view.dart';
import 'package:charity_org/views/log_in_screen/login_screen.dart';


import 'package:charity_org/views/start_views/start_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddFamilyViewFirstScreen(),
    );
  }


}
