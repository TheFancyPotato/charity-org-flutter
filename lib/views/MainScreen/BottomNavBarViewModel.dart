import 'package:charity_org/views/SettingViews/SettingView.dart';
//import 'package:charity_org/views/datatable/DataTableView.dart';
import 'package:charity_org/views/homeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../Family_details/family_details_view.dart';

class BottomNavBarViewModel {
  final controllerx = SidebarXController(selectedIndex: 1, extended: true);

  List screens = [const FamilyDetails(), HomeScreen(), const SettingView()];
  int x = 1;
  Color seclect = Colors.black;
  Color? unselect = Colors.grey[500];
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.table_chart_rounded), label: "data table "),
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting")
  ];
  ontap(int val,SidebarXController controller) {
    this.x = val;
    controller.selectedIndex==x;
  }
}

