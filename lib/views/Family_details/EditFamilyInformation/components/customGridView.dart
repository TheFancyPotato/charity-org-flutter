import 'package:flutter/material.dart';
import 'customTextField.dart';

class CustomGridView extends StatefulWidget {
  CustomGridView(
      {super.key,
      required this.listNames,
      required this.itemcount,
        required this.listValues,
      required this.crossAxisCount,
        required this.x ,
      });
  int itemcount;
  List listNames;
  List listValues;
  int crossAxisCount;
  int x ;

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(right: 10, left: 10),
      shrinkWrap: true,
      itemCount: this.widget.itemcount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 90,
          crossAxisCount: this.widget.crossAxisCount),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFieldWidget(text: widget.listValues[index+widget.x]),
            Text(widget.listNames[index+widget.x], style: TextStyle(color: Colors.grey)),
          ],
        );
      },
    );
  }
}
