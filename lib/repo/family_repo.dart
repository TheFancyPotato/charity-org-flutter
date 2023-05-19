import 'package:charity_org/models/family.dart';

abstract class FamilyRepository {
  Future<List<Family>> fetchFamilisData();
  Future<Family> fetchFamilyById(int id);
}


