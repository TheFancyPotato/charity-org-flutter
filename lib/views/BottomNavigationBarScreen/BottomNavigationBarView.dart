import 'package:charity_org/views/BottomNavigationBarScreen/BottomNavBarViewModel.dart';
//import 'package:charity_org/views/datatable/DataTableView.dart';
import 'package:charity_org/views/homeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

import '../SettingViews/SettingView.dart';

class BottomNavigationBarview extends StatefulWidget {
  const BottomNavigationBarview({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarview> createState() =>
      _BottomNavigationBarviewState();
}

class _BottomNavigationBarviewState extends State<BottomNavigationBarview> {
  BottomNavBarViewModel _data = BottomNavBarViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _data.screens[_data.x],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _data.ontap(value);
          });
        },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _data.x,
          selectedItemColor: _data.seclect,
          unselectedItemColor: _data.unselect,
          items: _data.items),
    );
  }
}
