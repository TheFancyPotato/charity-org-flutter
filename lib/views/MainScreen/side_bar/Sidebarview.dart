import 'package:sidebarx/sidebarx.dart';
import 'package:flutter/material.dart';

import 'Side_Bar_view_model.dart';

class SideBar extends StatelessWidget {
  SideBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;
  SideBarViewModel _data = SideBarViewModel();

  @override
  Widget build(BuildContext context) {
    return SidebarX(
        controller: controller,
        theme: SidebarXTheme(
            margin: const EdgeInsets.all(10),
            decoration: _data.BoxSideBar,
            hoverColor: SideBarViewModel.scaffoldBackgroundColor,
            textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
            selectedTextStyle: const TextStyle(color: Colors.white),
            itemTextPadding: const EdgeInsets.only(left: 30),
            selectedItemTextPadding: const EdgeInsets.only(left: 30),
            itemDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: SideBarViewModel.canvasColor),
            ),
            selectedItemDecoration: _data.selectIconBox,
            iconTheme: _data.selectedIconTheme,
            selectedIconTheme: _data.selectedIconTheme),
        extendedTheme: _data.extendedTheme,
        // footerDivider: divider,
        headerBuilder: (context, extended) {
          return _data.sizebox;
        },
        items: _data.ListItem);
  }
}
