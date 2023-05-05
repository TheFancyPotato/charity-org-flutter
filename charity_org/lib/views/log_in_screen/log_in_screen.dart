import 'package:charity_org/views/homeScreen/HomeScreen.dart';
import 'package:charity_org/views/log_in_screen/log_in_screen_model.dart';
import 'package:charity_org/views/start_views/start_view.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  var data = LogInScreenModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          color: data.backgroundcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              data.logo,
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: data.borderRadius),
                    labelText: data.emailText),
                validator: (value) {
                  if (value!.isEmpty) {
                    return data.email_empty;
                  } else if (!data.emailRegExp.hasMatch(value)) {
                    return data.email_valid;
                  }
                  return null;
                },
                onSaved: (value) {
                  data.email = value!;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: data.borderRadius),
                    labelText: data.passwordText),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return data.password_empty;
                  } else if (!data.passwordRegExp.hasMatch(value)) {
                    return data.email_valid;
                  }
                  return null;
                },
                onSaved: (value) {
                  data.password = value!;
                },
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50 ,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: data.borderRadius,
                ),
                child: TextButton(
                  child: Text(data.sign_in_text, style: data.textStyle),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                      // Do something with the user's input
                    }
                  },
                ),
              ),
            ],
          ),        ),
      ),
    );
  }
}
