import 'package:flutter/material.dart';
class AddFamilyViewModel{
  final stringRegex = RegExp(r'^[a-zA-Z\u0600-\u06FF\s]+$');
  late String label ;
  String name = "غير مسموح ";
  String empetyname = "رجاءا ادخل   ";
  String? StringValidator(String? value,String label) {
    if (value!.isEmpty) {
      return empetyname+label;
    } else if (!stringRegex.hasMatch(value)) {
      return name + label;
    }
    return null;
  }
  final numberRegex = RegExp(r'^[0-9]+$');
  String? numberValidator(String? value,String label) {
    if (value!.isEmpty) {
      return empetyname + label;
    } else if (!numberRegex.hasMatch(value)) {
      return name + label;
    }
    return null;
  }

}