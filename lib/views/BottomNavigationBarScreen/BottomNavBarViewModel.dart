import 'package:charity_org/views/SettingViews/SettingView.dart';
//import 'package:charity_org/views/datatable/DataTableView.dart';
import 'package:charity_org/views/homeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

class BottomNavBarViewModel {
  List screens = [DataTableView(), HomeScreen(), SettingView()];
  int x = 1;
  Color seclect = Colors.black;
  Color? unselect = Colors.grey[500];
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.table_chart_rounded), label: "data table "),
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
    const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting")
  ];
  ontap(int val) {
    this.x = val;
  }
}

class DataTableView {
}
