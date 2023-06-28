
import 'package:charity_org/views/MainScreen/side_bar/Sidebarview.dart';
//import 'package:charity_org/views/datatable/DataTableView.dart';
import 'package:charity_org/views/homeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:charity_org/util/responsive.dart';
import 'package:sidebarx/sidebarx.dart';

import '../SettingViews/SettingView.dart';
import 'BottomNavBarViewModel.dart';

class BottomNavigationBarview extends StatefulWidget {
  const BottomNavigationBarview({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarview> createState() =>
      _BottomNavigationBarviewState();
}

class _BottomNavigationBarviewState extends State<BottomNavigationBarview> {
  BottomNavBarViewModel _data = BottomNavBarViewModel();
  final controller = SidebarXController(selectedIndex: 1, extended: true);
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        body: Row(
          children: [
            if (Responsive.isDesktop(context)) SideBar(controller: controller),
            Expanded(
              child: Center(
                child: Responsive.isTablet(context)?_data.screens[_data.x]:_data.screens[controller.selectedIndex],
              ),
            ),
          ],
        ),
        // drawer: SideBar(controller: _controller),
        bottomNavigationBar:
            Responsive.isMobile(context) || Responsive.isTablet(context)
                ? BottomNavigationBar(
                    onTap: (value) {
                      setState(() {
                        _data.ontap(value,controller);
                      });
                    },
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    currentIndex: _data.x,
                    selectedItemColor: _data.seclect,
                    unselectedItemColor: _data.unselect,
                    items: _data.items)
                : null);
  }
}
