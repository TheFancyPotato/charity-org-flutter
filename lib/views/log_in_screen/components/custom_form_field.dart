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
        textDirection: TextDirection.rtl,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            alignLabelWithHint: true,
            labelStyle: const TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: data.borderRadius,
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: data.borderRadius,
                borderSide: const BorderSide(color: Colors.black)),
            label: Text(labelText),
            floatingLabelAlignment: FloatingLabelAlignment.center),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
