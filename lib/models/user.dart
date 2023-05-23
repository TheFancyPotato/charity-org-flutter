import 'package:charity_org/util/enums.dart';

class User {
  final int? id;
  final String? name;
  final String? email;
  final String? password;
  final UserRole? role;

  User({this.id, this.name, this.email, this.password, this.role});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        role: setUserRole(json["role"]));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["email"] = email;
    data["password"] = password;
    data["role"] = getUserRole();
    return data;
  }

  static UserRole? setUserRole(int roleId) {
    switch (roleId) {
      case 1:
        return UserRole.superAdmin;
      case 2:
        return UserRole.readWrite;
      case 3:
        return UserRole.readOnly;
      default:
        return null;
    }
  }

  int? getUserRole() {
    switch (role) {
      case UserRole.superAdmin:
        return 1;
      case UserRole.readWrite:
        return 2;
      case UserRole.readOnly:
        return 3;
      case null:
        return null;
    }
  }
}
