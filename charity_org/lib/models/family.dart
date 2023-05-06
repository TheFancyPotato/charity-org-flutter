import 'package:charity_org/util/enums.dart';


class Family {

final int? id;
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
final DateTime? createdAt;
final DateTime? updatedAt;
final DateTime? deletedAt;
final String? documents;
  
  Family({this.id, required this.providerName, required this.providerPhone, this.membersCount, this.youngersCount, this.providerSS, this.familyStatus, this.familyType, this.cityID, this.address, this.income, this.housingType, this.rentCost, this.sharesCount, this.incomeType, this.otherOrgs, this.notes, this.createdAt, this.updatedAt, this.deletedAt, this.documents});

  factory Family.fromJson(Map<String, dynamic> json){
    return Family(
      id : json["id"],
      providerName : json["provider name"],
      providerPhone: json["provider Phone"],
      membersCount: json["members Count"],
      youngersCount: json["youngers Count"],
      providerSS: intToProviderSS(json["provider social status"]) , 
      familyStatus: intToFamilyStatus(json["family Status"]) ,
      familyType : intTofamilyType(json["family Type"]) ,
      cityID: json["city ID"],
      address: json["address"],
      income: json["income"],
      incomeType: intToIncomeType(json["income Type"]) ,
      housingType: intToHousingType(json["housing Type"]) ,
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

  Map<String , dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic> {};
    data["provider name"] = providerName;
    data["provider phone"] = providerPhone;
    data["member count"] = membersCount;
    data["youngers count"] = youngersCount;
    data["provider social status"] = providerSSToInt();
    data["family type"] = familyTypeToInt();
    data["family status"] = familyStatusToInt();
    data["city id"] = cityID;
    data["address"] = address;
    data["income"] = income;
    data["housing type"] = housingTypeToInt();
    data["rent cost"] = rentCost;
    data["shares count"] = sharesCount;
    data["income type"] = incomeTypeToInt();
    data["other org"] = otherOrgs;
    data["notes"] = notes;
    data["created at"] = createdAt;
    data["updated at"] = updatedAt;
    data["deleted at"] = deletedAt;
    data["doucoments"] = documents;

    return data;
  }


static ProviderSS? intToProviderSS(int providerSSId){
  switch(providerSSId){
    case 1: return ProviderSS.widow;
    case 2: return ProviderSS.divorced;
    case 3: return ProviderSS.married;
    case 4: return ProviderSS.specialNeeds;
    case 5: return ProviderSS.missing;
    case 6: return ProviderSS.hanging;
    default: return null;
  }
 }

int? providerSSToInt(){
  switch(providerSS){
    case ProviderSS.widow: return 1;
    case ProviderSS.divorced: return 2;
    case ProviderSS.married: return 3;
    case ProviderSS.specialNeeds: return 4;
    case ProviderSS.missing: return 5;
    case ProviderSS.hanging: return 6;
    case null: return null;
  }
 }

static FamilyType? intTofamilyType(int familyType){
  switch(familyType){
    case 1: return FamilyType.specialNeeds;
    case 2: return FamilyType.orphans;
    case 3: return FamilyType.chase;
    case 4: return FamilyType.missing;
    case 5: return FamilyType.noProvider;
    case 6: return FamilyType.others;
    default: return null;
  }
 }

int? familyTypeToInt(){
  switch(familyType){
    case FamilyType.specialNeeds: return 1;
    case FamilyType.orphans: return 2;
    case FamilyType.chase: return 3;
    case FamilyType.missing: return 4;
    case FamilyType.noProvider: return 5;
    case FamilyType.others: return 6;
    case null: return null;
  }
 }

static IncomeType? intToIncomeType(int incomeType){
  switch(incomeType){
    case 1: return IncomeType.martyrs;
    case 2: return IncomeType.retired;
    case 3: return IncomeType.aid;
    case 4: return IncomeType.others;
    default: return null;
  }
 }

int? incomeTypeToInt(){
  switch(incomeType){
    case IncomeType.martyrs: return 1;
    case IncomeType.retired: return 2;
    case IncomeType.aid: return 3;
    case IncomeType.others: return 4;
    case null: return null;
  }
 }

static HousingType? intToHousingType(int housingTypeId){
  switch(housingTypeId){
    case 1: return HousingType.rent;
    case 2: return HousingType.ownership;
    case 3: return HousingType.illegal;
    case 4: return HousingType.others;
    default: return null;
  }
 }

int? housingTypeToInt(){
  switch(housingType){
    case HousingType.rent: return 1;
    case HousingType.ownership: return 2;
    case HousingType.illegal: return 3;
    case HousingType.others: return 4;
    case null: return null;
  }
 }

static FamilyStatus? intToFamilyStatus(int familyStatusId){
  switch(familyStatusId){
    case 1: return FamilyStatus.veryWeak;
    case 2: return FamilyStatus.weak;
    case 3: return FamilyStatus.average;
    default: return null;
  }
 }

int? familyStatusToInt(){
  switch(familyStatus){
    case FamilyStatus.veryWeak: return 1;
    case FamilyStatus.weak: return 2;
    case FamilyStatus.average: return 3;
    case null: return null;
 }

}
}
