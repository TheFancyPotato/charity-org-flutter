import 'package:charity_org/views/add_family/FirstScreen/add_family_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustomTextField extends StatefulWidget {
  CoustomTextField(
      {Key? key,
      required this.userinput,
      required this.icon,
      required this.hintName,
      required this.labelText,
      required this.validator})
      : super(key: key);
  late  String userinput;
  late Icon icon;
  late String hintName;
  late String labelText;

  final String? Function(String?) validator;

  @override
  State<CoustomTextField> createState() => _CoustomTextFieldState();
}

class _CoustomTextFieldState extends State<CoustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
        // controller

        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onChanged: (value) {
          setState(() {
            widget.userinput = value;
          });
        },
        validator: widget.validator,
        decoration: InputDecoration(
            focusColor: Colors.white,
            //add prefix icon
            prefixIcon: widget.icon,
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.0),
            ),
            fillColor: Colors.grey,
            hintText: "رجاءاً ادخل ${widget.hintName} ",

            //make hint text
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),

            //create lable
            labelText: widget.labelText,
            //lable style
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )));
  }
}
