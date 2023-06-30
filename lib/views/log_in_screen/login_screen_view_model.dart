import 'package:charity_org/util/api_helper.dart';
import 'package:flutter/material.dart';

import '../../util/local_storage.dart';
import '../homeScreen/home_screen.dart';

class LogInScreenModelView {
  late String email;
  late String password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ApiBase api = ApiBase();

  String emailText = " اسم المستخدم ";
  String passwordText = " كلمة المرور ";
  String logInText = " تسجيل الدخول ";
  Text welcome = const Text("  مرحبا بك ",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold));
  Icon welcomeIcon = Icon(
    Icons.waving_hand,
    size: 40,
    color: Colors.yellow.shade600,
  );
  String userText = " إسم المستخدم ";

  TextStyle textStyle = const TextStyle(fontSize: 16, color: Colors.white);

  final RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9_\-=@,\.]+$");

  BorderRadius borderRadius = BorderRadius.circular(20);

  String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'يجب ادخال اسم المستخدم';
    } else if (!emailRegExp.hasMatch(value)) {
      return "تحتوي كلمة المرور على رموز غير مقبولة";
    }
    return null;
  }

  onSavedEmail(String? value) {
    email = value!;
  }

  String? passwordValidator(value) {
    if (value!.isEmpty) {
      return "يرجى إدخال كلمة المرور";
    } else if (value.length < 8) {
      return "كلمة المرور قصيرة";
    }
    return null;
  }

  onSavedPassword(value) {
    password = value!;
  }

  logIn(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      dynamic response = await api.post(
          url: 'auth/login',
          body: {'username': email, 'password': password},
          containHeaders: false);
      Prefs().setUserId(response["user_id"]);
      Prefs().setToken(response["token"]);
      print(Prefs().token);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      // Do something with the user's input
    }
  }
}
