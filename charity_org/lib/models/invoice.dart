class Invoice {

  final int id;
  final DateTime dateTime;
  final int amount;
  final String? description;
  final int familyId;
  final int userId;

Invoice({required this.id,required this.dateTime,required this.amount,this.description,required this.familyId,required this.userId});

factory Invoice.fromJson(Map<String, dynamic> json){
return Invoice(
  id: json["id"],
  dateTime: json["date"],
  amount: json["amount"],
  familyId: json["family id"],
  userId: json["user id"],
  description: json["description"]
  );
}

Map<String, dynamic> toJson(){
  final Map<String, dynamic> data = <String, dynamic>{};
  data["data"] = DateTime.now();
  data["amount"] = amount;
  data["description"] = description;
  data["family id"] = familyId;
  data["user id"] = userId;
return data;
}


}