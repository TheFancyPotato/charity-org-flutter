import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  Icon icon;
  String text;
  CustomButtom({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        icon: this.icon,
        onPressed: () {
          print("sii");
        },
        label: Text(this.text),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))));
  }
}
