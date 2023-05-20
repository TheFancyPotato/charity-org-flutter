import 'package:charity_org/views/homeScreen/components/CustomListTile.dart';
import 'package:flutter/material.dart';

import 'CustomListView.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (_, index) {
          return Container(
              margin: EdgeInsets.only(top: 10 , left: 20 , right: 20 ),
              child:
                  CustomListTile(leading: index + 1, title: "بيت ابو جبري  "));
        });
  }
}
