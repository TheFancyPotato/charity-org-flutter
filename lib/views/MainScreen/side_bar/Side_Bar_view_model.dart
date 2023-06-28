import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarViewModel {
  late final SidebarXController controller;
  static const primaryColor = const Color(0xFF685BFF);
  static const canvasColor = const Color(0xFF2E2E48);
  static const scaffoldBackgroundColor = const Color(0xFF464667);
  static const accentCanvasColor = Color(0xFF3E3E61);
  static const white = Colors.white;
  static const actionColor =  Color(0xFF5F5FA7);
  final divider = Divider(color: Colors.white);
  List<SidebarXItem> ListItem = [
    const SidebarXItem(
      icon: Icons.people,
      label: 'جدول العوائل ',),
    SidebarXItem(
      icon: Icons.home,
      label: 'الصفحة الرئيسة ',
      onTap: () {
        debugPrint('Home');
      },
    ),
    const SidebarXItem(
      icon: Icons.settings,
      label: 'الاعدادت',
    ),


  ];
  BoxDecoration BoxSideBar = BoxDecoration(
    color: canvasColor,
    borderRadius: BorderRadius.circular(20),
  );
  SizedBox sizebox = const SizedBox(
    height: 100,
  );
  SidebarXTheme extendedTheme = const SidebarXTheme(
    width: 200,
    decoration: BoxDecoration(
      color: Colors.black,
    ),
  );
  IconThemeData selectedIconTheme = const IconThemeData(
    color: Colors.white,
    size: 20,
  ); BoxDecoration selectIconBox = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      color: actionColor.withOpacity(0.37),
    ),
    gradient: const LinearGradient(
      colors: [accentCanvasColor, canvasColor],
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.28),
        blurRadius: 30,
      )
    ],
  );
}