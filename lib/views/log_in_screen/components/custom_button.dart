import 'package:charity_org/util/responsive.dart';
import 'package:flutter/material.dart';
import '../../MainScreen/BottomNavigationBarView.dart';
import '../../homeScreen/home_screen.dart';
import '../login_screen_view_model.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.data
  });

  final LogInScreenModelView data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 30),
      height: 50,
      width: Responsive.widthOfScreen(context: context),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: data.borderRadius,
      ),
      child: TextButton(
        child: Text(data.logInText, style: data.textStyle),
        onPressed: () {
          if (data.formKey.currentState!.validate()) {
            data.formKey.currentState!.save();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavigationBarview()));
            // Do something with the user's input
          }
        },
      ),
    );
  }
}
