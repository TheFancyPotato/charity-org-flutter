
import 'package:charity_org/views/BottomNavigationBarScreen/BottomNavigationBarView.dart';
import 'package:charity_org/views/log_in_screen/log_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: BottomNavigationBarview(),
    );
  }
}