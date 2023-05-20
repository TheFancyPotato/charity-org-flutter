import 'package:charity_org/views/homeScreen/components/CustomButton.dart';
import 'package:charity_org/views/homeScreen/components/CustomListView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtom(icon: Icon(Icons.add), text: "اضافة عائلة "),
                CustomButtom(icon: Icon(Icons.payment), text: "دفع مستحقات")
              ]
            ),
        Expanded(
                child: CustomListView(),
              ),

          ],
        ),
      ),
    );
  }
}
