import 'package:charity_org/responsive.dart';
import 'package:charity_org/views/add_family/SecondScreen/AddFamilyViewSecondScreen.dart';
import 'package:flutter/material.dart';

import '../../MainScreen/BottomNavigationBarView.dart';
import 'add_family_view_model.dart';
import '../components/AnimationButton.dart';
import '../components/coustomTextField.dart';

class AddFamilyViewFirstScreen extends StatefulWidget {
  const AddFamilyViewFirstScreen({Key? key}) : super(key: key);

  @override
  State<AddFamilyViewFirstScreen> createState() =>
      AddFamilyViewFirstScreenState();
}

class AddFamilyViewFirstScreenState extends State<AddFamilyViewFirstScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  AddFamilyViewModel data = AddFamilyViewModel();
  final myKey = GlobalKey<FormState>();
  late  String name="" ;
  late String number ="";
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "إضافة عائلة ",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          )),
      backgroundColor: Colors.white,
      body: Form(
        key: myKey,
        child: Column(
           textDirection: TextDirection.rtl,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Text("إنشاء عائلة جديدة",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Text("يرجى التأكد من ملىء الحقول التالية :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
            ),
            Expanded(
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isMobile(context) ||
                              Responsive.isTablet(context)
                          ? 1
                          : 2,
                      mainAxisExtent: 120),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: CoustomTextField(
                        validator: (p0) {
                          return data.StringValidator(p0, "إسم المعيل ");
                        },
                        userinput: name,
                        icon: const Icon(
                          Icons.supervised_user_circle_rounded,
                          color: Colors.deepPurple,
                        ),
                        hintName: " إسم المعيل ",
                        labelText: "إسم المعيل",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: CoustomTextField(
                        validator: (p0) {
                          return data.numberValidator(p0!, "رقم المعيل ");
                        },
                        userinput: number,
                        icon: const Icon(
                          Icons.person,
                          color: Colors.deepPurple,
                        ),
                        hintName: " رقم المعيل",
                        labelText: "رقم المعيل",
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          if (myKey.currentState!.validate()) {
                            myKey.currentState!.save();
                            myKey.currentState!.reset();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AddFamilyViewSecondScreen(
                                          key1: myKey,
                                        )));
                          }
                        },
                        child: AnimatedButton(
                          controller: _controller,
                          icon: const Icon(
                            Icons.arrow_back_ios_sharp,
                            size: 30,
                            color: Colors.black,
                          ),
                          text: 'التالي ',
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
