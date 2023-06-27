import 'package:charity_org/util/enums.dart';

class Family {
  final int id;
  final String providerName;
  final String providerPhone;
  final int? membersCount;
  final int? youngersCount;
  final ProviderSS? providerSS;
  final FamilyStatus? status;
  final FamilyType? type;
  final int? cityID;
  final String? address;
  final int? income;
  final HousingType? housingType;
  final int? rentCost;
  final int? sharesCount;
  final IncomeType? incomeType;
  final String? otherOrgs;
  final String? notes;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final String? documents;

  Family(
      {required this.id,
      required this.providerName,
      required this.providerPhone,
      this.membersCount,
      this.youngersCount,
      this.providerSS,
      this.status,
      this.type,
      this.cityID,
      this.address,
      this.income,
      this.housingType,
      this.rentCost,
      this.sharesCount,
      this.incomeType,
      this.otherOrgs,
      this.notes,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.documents});

  factory Family.fromJson(Map<String, dynamic> json) {
    return Family(
      id: json["id"],
      providerName: json["provider_name"],
      providerPhone: json["provider_phone"],
      membersCount: json["members_count"],
      youngersCount: json["youngers_count"],
      providerSS: ProviderSS.getSS(json["provider_social_status"]),
      status: FamilyStatus.getStatus(json["status"]),
      type: FamilyType.getType(json["type"]),
      cityID: json["city_id"],
      address: json["address"],
      income: json["income"],
      incomeType: IncomeType.getType(json["income_type"]),
      housingType: HousingType.getType(json["housing_type"]),
      sharesCount: json["shares_count"],
      notes: json["notes"],
      otherOrgs: json["other_orgs"],
      rentCost: json["rent_cost"],
      createdAt: json["created_at"],
      updatedAt: json["updated_at"],
      deletedAt: json["deleted_at"],
      documents: json["docs"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data["provider_name"] = providerName;
    data["provider_phone"] = providerPhone;
    data["members_count"] = membersCount;
    data["youngers_count"] = youngersCount;
    data["provider_social_status"] = providerSS!.toInt();
    data["type"] = type!.toInt();
    data["status"] = status!.toInt();
    data["city id"] = cityID;
    data["address"] = address;
    data["income"] = income;
    data["housing Type"] = housingType!.toInt();
    data["rent_cost"] = rentCost;
    data["shares_count"] = sharesCount;
    data["income_type"] = incomeType!.toInt();
    data["other_orgs"] = otherOrgs;
    data["notes"] = notes;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    data["deleted_at"] = deletedAt;
    data["docs"] = documents;

    return data;
  }
}

Map<dynamic, dynamic> familyData = {
  "families": [
    {
      "id": 2,
      "provider name": "ابث نيو الحمداني السامرائي",
      "provider Phone": "07802394145",
      "members Count": 6,
      "youngers Count": 4,
      "provider social status": 2,
      "family Status": 1,
      "family Type": 3,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 3,
      "rent Cost": 100000,
      "shares Count": 3,
      "income Type": 1,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 0,
      "provider name": "محمد صلوات",
      "provider Phone": "07802394145",
      "members Count": 6,
      "youngers Count": 4,
      "provider social status": 2,
      "family Status": 1,
      "family Type": 3,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 2,
      "rent Cost": 100000,
      "shares Count": 3,
      "income Type": 2,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 10,
      "provider name": "الحمداني السامرائي",
      "provider Phone": "07802394145",
      "members Count": 6,
      "youngers Count": 4,
      "provider social status": 5,
      "family Status": 1,
      "family Type": 3,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 2,
      "rent Cost": 100000,
      "shares Count": 2,
      "income Type": 2,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 5,
      "provider name": "ابراهيم سعدي ابراهيم",
      "provider Phone": "07802394145",
      "members Count": 6,
      "youngers Count": 4,
      "provider social status": 1,
      "family Status": 1,
      "family Type": 1,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 4,
      "rent Cost": 100000,
      "shares Count": 3,
      "income Type": 3,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 8,
      "provider name": "منصور ابن الحجي",
      "provider Phone": "07802394145",
      "members Count": 8,
      "youngers Count": 1,
      "provider social status": 4,
      "family Status": 1,
      "family Type": 4,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 1,
      "rent Cost": 100000,
      "shares Count": 5,
      "income Type": 4,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 8,
      "provider name": "منصور ابن الحجي",
      "provider Phone": "07802394145",
      "members Count": 8,
      "youngers Count": 1,
      "provider social status": 4,
      "family Status": 1,
      "family Type": 4,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 1,
      "rent Cost": 100000,
      "shares Count": 5,
      "income Type": 4,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    }
  ],
  "next page": [
    {
      "id": 10,
      "provider name": "الحمداني السامرائي",
      "provider Phone": "07802394145",
      "members Count": 6,
      "youngers Count": 4,
      "provider social status": 5,
      "family Status": 1,
      "family Type": 3,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 2,
      "rent Cost": 100000,
      "shares Count": 2,
      "income Type": 2,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 5,
      "provider name": "ابراهيم سعدي ابراهيم",
      "provider Phone": "07802394145",
      "members Count": 6,
      "youngers Count": 4,
      "provider social status": 1,
      "family Status": 1,
      "family Type": 1,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 4,
      "rent Cost": 100000,
      "shares Count": 3,
      "income Type": 3,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 8,
      "provider name": "منصور ابن الحجي",
      "provider Phone": "07802394145",
      "members Count": 8,
      "youngers Count": 1,
      "provider social status": 4,
      "family Status": 1,
      "family Type": 4,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 1,
      "rent Cost": 100000,
      "shares Count": 5,
      "income Type": 4,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    },
    {
      "id": 8,
      "provider name": "منصور ابن الحجي",
      "provider Phone": "07802394145",
      "members Count": 8,
      "youngers Count": 1,
      "provider social status": 4,
      "family Status": 1,
      "family Type": 4,
      "city ID": 1,
      "address": "شارع ابو حمدان",
      "income": 400000,
      "housing Type": 1,
      "rent Cost": 100000,
      "shares Count": 5,
      "income Type": 4,
      "other Orgs": "null",
      "notes": "null",
      "created At": "haah",
      "updated At": "loool",
      "deleted At": "mama",
      "documents": "baba"
    }
  ],
  "count": 10
};
