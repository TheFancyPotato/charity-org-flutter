import 'package:flutter/material.dart';

import '../homeScreen/home_screen.dart';

class FamilyDetailsViewModel {
  Text PageTitle = Text("المعلومات الخاصة بالعائلة  ",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),);
  Image logo = Image.asset(
    "assets/images/logo.jpg",
    width: 200,
    height: 50,
  );
  List familydetail = [
    "الرقم التعريفي ",
    " اسم صاحب العائلة  ",
    " رقم صاحب العائلة  ",
    " عدد الافراد ",
    "عدد  من هم دون ال 18  ",
    "نوع العائلة ",
    " حالة العائلة ",
    "العنوان ",
    "المنظمات الاخرى ",
    "نوع الراتب ",
    "ملاحظات اخرى "
  ];
  List infofamily = [
    "1",
    "احمد عبد الحق ",
    "077214267",
    "6",
    "2",
    "مادري",
    "مطلقة",
    "بغداد  البتاويين",
    "منظمة السيد ",
    "رعاية اجتماعية ",
    "عدهم مفقود بحرب داعش"
  ];
  List<Widget> icons = [
    const Icon(Icons.perm_identity, color: Colors.orange),
    const Icon(Icons.person, color: Colors.deepOrange),
    const Icon(Icons.numbers, color: Colors.orange),
    const Icon(Icons.family_restroom, color: Colors.deepOrange),
    const Icon(
      Icons.child_care,
      color: Colors.orange,
    ),
    const Icon(Icons.account_balance_sharp, color: Colors.deepOrange),
    const Icon(Icons.family_restroom, color: Colors.orange),
    const Icon(Icons.location_city, color: Colors.deepOrange),
    const Icon(Icons.foundation, color: Colors.orange),
    const Icon(Icons.monetization_on_sharp, color: Colors.deepOrange),
    const Icon(
      Icons.notes,
      color: Colors.orange,
    )
  ];
}
