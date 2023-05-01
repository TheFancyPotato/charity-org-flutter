import 'package:charity_org/models/family.dart';

abstract class FamilyRepo {
  Future<Family> fetchFamilyData();
}