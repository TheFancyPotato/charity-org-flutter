import 'package:charity_org/util/responsive.dart';
import 'package:charity_org/views/log_in_screen/login_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'components/custom_button.dart';
import 'components/custom_form_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final LogInScreenModelView data = LogInScreenModelView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: data.formKey,
          child: Container(
            padding: const EdgeInsets.only(left: 30, right: 30),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: Image.asset("assets/images/img.png",
                       ),
                  ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                             data.welcomeIcon,
                             data.welcome,
                            ],
                          ),
                        ),
                        CustomFormField(
                          data: data,
                          labelText: data.userText,
                          validator: (value) {
                            return data.emailValidator(value);
                          },
                          onSaved: (value) {
                            data.onSavedEmail(value);
                          },
                        ),
                        CustomFormField(
                          data: data,
                          labelText: data.passwordText,
                          validator: (value) {
                            return data.passwordValidator(value);
                          },
                          onSaved: (value) {
                            data.onSavedPassword(value);
                          },
                        ),
                        CustomButton(
                          data: data,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Text("  مرحبا بك ",
         style: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold));
  }
}
