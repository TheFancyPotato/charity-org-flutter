import 'package:charity_org/models/family.dart';
import 'package:charity_org/util/enums.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  CustomDropDownButton({
    super.key,
    required this.counter,
    required this.text,
    required this.icon,
    required this.iconcolor,
    required this.type,
    required this.setstate,
    required this.labelText,
  });
  String? val;

  final List<int> counter;
  late String text;
  final Icon icon;
  final Color iconcolor;
  final Iterable<DropdownMenuItem<String>> type;
  final void Function(void Function() p1) setstate;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: Icon(Icons.menu_outlined),
      iconEnabledColor: Colors.deepPurple,
      iconSize: 30,
      itemHeight: 50,
      onSaved: (newValue) {
        this.text = newValue!;
      },
      value: val,
      items: type.toList(),
      onChanged: (value) {
        setstate(() {
          text = value!;
        });
      },
      decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          prefixIcon: icon,
          prefixIconColor: iconcolor,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.black),
          hoverColor: Colors.white,
          filled: true,
          focusColor: Colors.black,
          border: OutlineInputBorder()),
    );
  }
}
