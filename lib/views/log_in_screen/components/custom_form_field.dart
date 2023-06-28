import 'package:flutter/material.dart';
import '../login_screen_view_model.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.data,
    required this.labelText,
    required this.validator,
    required this.onSaved,
  });

  final LogInScreenModelView data;
  final String labelText;
  final String? Function(String?) validator;
  final Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(

        cursorColor: Colors.black,
        decoration: InputDecoration(
      labelStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: data.borderRadius,
              borderSide:  BorderSide(
                color: Colors.blueAccent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: data.borderRadius,
                borderSide:  BorderSide(color: Colors.grey.shade400)),
            labelText: labelText),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
