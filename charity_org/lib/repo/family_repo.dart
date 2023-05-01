import 'package:charity_org/models/family.dart';
import 'package:flutter/services.dart';

abstract class HomeRepo {
  Future<Family> fetchFamilyData();
}


class HomeRepoImpl implements HomeRepo {
  @override
  Future<Family> fetchFamilyData() async {
    await Future.delayed(const Duration(milliseconds: 1800));
    final response = {
"the fake data will go here1" : "enter",
"the fake data will go here2" : "enter",
};
    return Family.fromJson(response);
  }
}