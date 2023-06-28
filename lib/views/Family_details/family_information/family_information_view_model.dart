import 'package:flutter/material.dart';

import '../../../responsive.dart';
class FamilyInfoViewModel{
  String notestext=    "شعلان عبد الكريم "
      "dsbffds"
      "dbdfb"
      "dbdbrb\nberb"
      "b"
      "b"
      "b"
      "b"
      "bbb"
      "b"
      "b"
      "bbbb"
      "dsvdb"
      ""
      "scacscvv"
      "vvvv\n"
      ""
      "cv"
      "vsvssw"
      "vddv\nd"
      "vd"
      "v"
      "d"
      "vsvdsvd"
      "vd"
      "vd"
      "vd"
      "svdsvdsv"
      "dsv"
      "ds"
      "v"
      "dvs"
      "vdvs"
      "dvdv \n";
  Text title(String text){
  return Text(
       text,
      textDirection: TextDirection.rtl,
      style: TextStyle(fontSize: 30));}
  int responsivevaild(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return 1;
    } else
      return 2;
  }
  List names = [
    "الرقم التعريفي ",
    "اسم صاحب العائلة",
    "رقم مسؤول العائلة",
    "عدد الاسهم  ",
    "عدد القاصرين",
    "حالة المسؤول الاجتماعية ",
    "حالة العائلة",
    "نوع العائلة ",
    "المدينة",
    "العنوان",
    "الراتب",
    "نوع السكن",
    "rent Cost",
    "shares Count",
    "نوع الراتب",
    "منظمات اخرى ",
    "ملاحظات اخرى",
    "تم الانشاء بتاريخ",
    "تم االتحديث بتاريخ",
    "تم الحذف بتاريخ",
    "وثائق"
  ];
  List<String> values = [
    "1 ",
    "حسين علي ",
    "ر0666",
    " 5  ",
    "5",
    "متزوج  ",
    "ببب",
    "ثقبقثقصلبلل ",
    "المدينة",
    "العنوان",
    "الراتب",
    "نوع السكن",
    "rent Cost",
    "shares Count",
    "نوع الراتب",
    "منظمات اخرى ",
    "ملاحظات اخرى",
    "تم الانشاء بتاريخ",
    "تم االتحديث بتاريخ",
    "تم الحذف بتاريخ",
    "وثائق"
  ].toList();
  Text subTitleText(String text) {
    return  Text(text,
        style: const TextStyle(fontWeight: FontWeight.bold),
        textDirection: TextDirection.rtl);
  }
  Divider divider =   const Divider(
    height: 3,
    color: Colors.grey,
  );

}