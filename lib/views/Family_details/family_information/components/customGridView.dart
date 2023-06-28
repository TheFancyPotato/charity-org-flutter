import 'package:flutter/material.dart';

import '../family_information_view_model.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView(
      {super.key,
        required this.listNames,
        required this.itemcount,
        required this.listValues,
        required this.crossAxisCount,
        required this.x,
      });
  int itemcount;
  List listNames;
  List listValues;
  int crossAxisCount;
  int x ;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(right: 10, left: 10),
      shrinkWrap: true,
      itemCount: this.itemcount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          mainAxisExtent: 60,
          crossAxisCount: this.crossAxisCount),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(listValues[index+x],
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text(listNames[index+x],
                style: TextStyle(color: Colors.grey)),
          ],
        );
      },
    );
  }
}
