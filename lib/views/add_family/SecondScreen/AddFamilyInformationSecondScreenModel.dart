

import 'package:charity_org/responsive.dart';
import 'package:flutter/material.dart';
import 'package:charity_org/util/enums.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class AddFamilyInfoSecondScreenModel {
  late AnimationController _controller;

  List<int> providerFamilyNumbers = [1, 2, 3, 4, 5, 6];
  List<int> incomeHousingnumber = [1, 2, 3, 4];
  List<int> FamilyStatusnumber = [1, 2, 3];
  String? label;
  final stringRegex = RegExp(r'^[a-zA-Z\u0600-\u06FF\s]+$');
  String name = "غير مسموح ";
  final numberRegex = RegExp(r'^[0-9]+$');
  EdgeInsets margin = const EdgeInsets.only(
    left: 20,
    right: 20,
    top: 20,
  );
  String? numberValidator(String value, String label) {
    if (stringRegex.hasMatch(value)) {
      return name + label;
    }

    return null;
  }

  Container containerborder = Container(
    decoration: BoxDecoration(
        border: BorderDirectional(
            bottom: BorderSide(width: 1, color: Colors.grey.shade200))),
  );
  String? StringValidator(String value, String label) {
    if (numberRegex.hasMatch(value)) {
      return name + label;
    }
    return null;
  }

  int responsivevaild(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return 1;
    } else
      return 2;
  }

  Iterable<DropdownMenuItem<String>> buildMapProviderss(List<int> counter) {
    return counter.map((number) {
      return DropdownMenuItem<String>(
        value: ProviderSS.getSS(number).value,
        child: Text(ProviderSS.getSS(number).value.toString().split('.').last),
      );
    });
  }

  Iterable<DropdownMenuItem<String>> buildMapFamilyType(List<int> counter) {
    return counter.map((number) {
      return DropdownMenuItem<String>(
        value: FamilyType.getType(number).value,
        child:
            Text(FamilyType.getType(number).value.toString().split('.').last),
      );
    });
  }

  Iterable<DropdownMenuItem<String>> buildMapIncomeType(List<int> counter) {
    return counter.map((number) {
      return DropdownMenuItem<String>(
        value: IncomeType.getType(number).value,
        child:
            Text(IncomeType.getType(number).value.toString().split('.').last),
      );
    });
  }

  Iterable<DropdownMenuItem<String>> buildMapHousingType(List<int> counter) {
    return counter.map((number) {
      return DropdownMenuItem<String>(
        value: HousingType.getType(number).value,
        child:
            Text(HousingType.getType(number).value.toString().split('.').last),
      );
    });
  }

  Iterable<DropdownMenuItem<String>> buildMapFamilyStatus(List<int> counter) {
    return counter.map((number) {
      return DropdownMenuItem<String>(
        value: FamilyStatus.getStatus(number).value,
        child: Text(
            FamilyStatus.getStatus(number).value.toString().split('.').last),
      );
    });
  }

  Text subTitleText(String text) {
    return  Text(text,
        style: const TextStyle(fontWeight: FontWeight.bold),
        textDirection: TextDirection.rtl);
  }
}
