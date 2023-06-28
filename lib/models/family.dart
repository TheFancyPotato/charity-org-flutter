import '../util/enums.dart';

class Family {
  final int id;
  final String providerName;
  final String providerPhone;
  final int? membersCount;
  final int? youngersCount;
  final ProviderSS? providerSS;
  final FamilyStatus? familyStatus;
  final FamilyType? familyType;
  final int? cityID;
  final String? address;
  final int? income;
  final HousingType? housingType;
  final int? rentCost;
  final int? sharesCount;
  final IncomeType? incomeType;
  final String? otherOrgs;
  final String? notes;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final String? documents;

  Family(
      {required this.id,
      required this.providerName,
      required this.providerPhone,
      this.membersCount,
      this.youngersCount,
      this.providerSS,
      this.familyStatus,
      this.familyType,
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
      providerName: json["provider name"],
      providerPhone: json["provider Phone"],
      membersCount: json["members Count"],
      youngersCount: json["youngers Count"],
      providerSS: ProviderSS.getSS(json["provider social status"]),
      familyStatus: FamilyStatus.getStatus(json["family Status"]),
      familyType: FamilyType.getType(json["family Type"]),
      cityID: json["city ID"],
      address: json["address"],
      income: json["income"],
      incomeType: IncomeType.getType(json["income Type"]),
      housingType: HousingType.getType(json["housing Type"]),
      sharesCount: json["shares Count"],
      notes: json["notes"],
      otherOrgs: json["other Orgs"],
      rentCost: json["rent Cost"],
      createdAt: json["created At"],
      updatedAt: json["updated At"],
      deletedAt: json["deleted At"],
      documents: json["documents"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data["provider name"] = providerName;
    data["provider phone"] = providerPhone;
    data["member count"] = membersCount;
    data["youngers count"] = youngersCount;
    data["provider social status"] = providerSS!.toInt();
    data["family type"] = familyType!.toInt();
    data["family status"] = familyStatus!.toInt();
    data["city id"] = cityID;
    data["address"] = address;
    data["income"] = income;
    data["housing type"] = housingType!.toInt();
    data["rent cost"] = rentCost;
    data["shares count"] = sharesCount;
    data["income type"] = incomeType!.toInt();
    data["other org"] = otherOrgs;
    data["notes"] = notes;
    data["created at"] = createdAt;
    data["updated at"] = updatedAt;
    data["deleted at"] = deletedAt;
    data["doucoments"] = documents;

    return data;
  }

  dynamic getSortedColumn(int index) {
    switch (index) {
      case 1:
        return sharesCount;
      case 2:
        return rentCost;
      case 14:
        return id;
      case 4:
        return income;
      case 13:
        return providerName;
      case 10:
        return youngersCount;
      case 11:
        return membersCount;
      default:
        return;
    }
  }}
 Set<Map<String, Object>> familyData = {
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
  } ;



