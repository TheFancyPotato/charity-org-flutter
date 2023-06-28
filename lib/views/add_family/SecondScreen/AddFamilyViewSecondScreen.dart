import 'dart:io';
import 'dart:js_util';
import 'package:charity_org/responsive.dart';
import 'package:charity_org/views/homeScreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'AddFamilyInformationSecondScreenModel.dart';
import '../components/AnimationButton.dart';
import '../components/coustomTextField.dart';
import '../components/customDropDownButton.dart';

class AddFamilyViewSecondScreen extends StatefulWidget {
  AddFamilyViewSecondScreen({Key? key1}) : super(key: key1);
  final key1 = GlobalKey<FormState>();

  @override
  State<AddFamilyViewSecondScreen> createState() =>
      _AddFamilyViewSecondScreenState();
}

class _AddFamilyViewSecondScreenState extends State<AddFamilyViewSecondScreen>
    with SingleTickerProviderStateMixin {
  String text = TextEditingController().text;
  late AnimationController _controller;
  late List<XFile> image = [];
  ImagePicker imagePicker = ImagePicker();
  Future<void> uplodingimage() async {
    var imagepicked = await imagePicker.pickMultiImage();
    if (imagepicked != null) {
      setState(() {
        image.addAll(imagepicked);
      });
    } else {}
    ;
  }

  late String sharesCount = "";
  late String memberCount = "";
  late String youngersCount = "";
  late String providerss = "";
  late String familytype = "";
  late String familystatus = "";
  late String adress = "";
  late String housingType = "";
  late String cityId = "";
  late String incomeType = "";
  late String otherOrg = "";
  late String income = "";
  late String notes = "";

  final AddFamilyInfoSecondScreenModel _data = AddFamilyInfoSecondScreenModel();

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
          title: const Text("إضافة عائلة جديدة  ",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Form(
            key: widget.key1,
            child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: _data.margin,
                      child: const Text(
                        "إكمال اجراءات اضافة العائلة : ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 20),
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: _data.subTitleText("الحقول الخاصة بالأعداد  :"),
                  ),
                  GridView(
                      padding: const EdgeInsets.only(bottom: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _data.responsivevaild(context),
                          mainAxisExtent: 100),
                      children: [
                        Container(
                          margin: _data.margin,
                          child: CoustomTextField(
                            validator: (p0) {
                              return _data.numberValidator(p0!, "عدد الأسهم ");
                            },
                            userinput: this.sharesCount,
                            icon: const Icon(
                              FontAwesomeIcons.arrowsSpin,
                              color: Colors.deepPurple,
                            ),
                            hintName: "عدد الأسهم ",
                            labelText: "عدد الأسهم ",
                          ),
                        ),
                        Container(
                          margin: _data.margin,
                          child: CoustomTextField(
                            validator: (p0) {
                              return _data.numberValidator(
                                  p0!, " عدد افراد الاسرة ");
                            },
                            userinput: this.memberCount,
                            icon: const Icon(
                              Icons.family_restroom,
                              color: Colors.deepPurple,
                            ),
                            hintName: " عدد افراد الاسرة ",
                            labelText: " عدد افراد الاسرة",
                          ),
                        ),
                        Container(
                          margin: _data.margin,
                          child: CoustomTextField(
                            validator: (p0) {
                              return _data.numberValidator(
                                  p0!, "عدد القاصرين ");
                            },
                            userinput: this.youngersCount,
                            icon: const Icon(
                              FontAwesomeIcons.children as IconData,
                              color: Colors.deepPurple,
                            ),
                            hintName: "عدد القاصرين",
                            labelText: "عدد القاصرين",
                          ),
                        ),
                      ]),
                  // I done the number widget
                  Container(
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                width: 1, color: Colors.grey.shade200))),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: _data.subTitleText("الحقول الخاصة بالعائلة  :")),
                  GridView(
                      padding: const EdgeInsets.only(bottom: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _data.responsivevaild(context),
                          mainAxisExtent: 100),
                      children: [
                        Container(
                          margin: _data.margin,
                          child: CustomDropDownButton(
                            type: _data.buildMapProviderss(
                                _data.providerFamilyNumbers),
                            iconcolor: Colors.deepPurple,
                            counter: _data.providerFamilyNumbers,
                            text: this.providerss,
                            icon: const Icon(Icons.family_restroom),
                            setstate: (Function() setState) {},
                            labelText: "حالة مسؤول العائلة",
                          ),
                        ),
                        Container(
                          margin: _data.margin,
                          child: CustomDropDownButton(
                            type: _data.buildMapFamilyType(
                                _data.providerFamilyNumbers),
                            iconcolor: Colors.deepPurple,
                            counter: _data.providerFamilyNumbers,
                            text: this.familytype,
                            icon: const Icon(Icons.family_restroom),
                            setstate: (Function() setState) {},
                            labelText: "نوع العائلة",
                          ),
                        ),
                        Container(
                          margin: _data.margin,
                          child: CustomDropDownButton(
                            type: _data
                                .buildMapFamilyStatus(_data.FamilyStatusnumber),
                            iconcolor: Colors.deepPurple,
                            counter: _data.FamilyStatusnumber,
                            text: this.familystatus,
                            icon: const Icon(Icons.family_restroom),
                            setstate: (Function() setState) {},
                            labelText: "حالة العائلة",
                          ),
                        ),
                      ]),
                  _data.containerborder,
                  Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: _data.subTitleText("الحقول الخاصة بالسكن  :")),
                  GridView(
                      padding: const EdgeInsets.only(bottom: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _data.responsivevaild(context),
                          mainAxisExtent: 100),
                      children: [
                        Container(
                          margin: _data.margin,
                          child: CoustomTextField(
                            userinput: adress,
                            icon: const Icon(FontAwesomeIcons.city,
                                color: Colors.deepPurple),
                            hintName: "العنوان",
                            labelText: "العنوان",
                            validator: (p0) {
                              return _data.StringValidator(p0!, "العنوان   ");
                            },
                          ),
                        ),
                        Container(
                            margin: _data.margin,
                            child: CoustomTextField(
                              userinput: this.cityId,
                              icon: const Icon(FontAwesomeIcons.idCard,
                                  color: Colors.deepPurple),
                              labelText: "الرقم التعريفي للمنطقة",
                              hintName: "الرقم التعريفي للمنطقة ",
                              validator: (p0) {
                                return _data.numberValidator(
                                    p0!, "الرقم التعريفي  ");
                              },
                            )),
                        Container(
                          margin: _data.margin,
                          child: CustomDropDownButton(
                            type: _data
                                .buildMapHousingType(_data.incomeHousingnumber),
                            iconcolor: Colors.deepPurple,
                            counter: _data.incomeHousingnumber,
                            text: housingType,
                            icon: const Icon(Icons.house),
                            setstate: (Function() setState) {},
                            labelText: "نوع السكن",
                          ),
                        )
                      ]),
                  _data.containerborder,
                  Card(
                    elevation: 4.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      textDirection: TextDirection.rtl,
                      children: [
                        _data.subTitleText("أضف بعض الملاحظات  "),
                        Container(
                          padding: const EdgeInsets.all(30.0),
                          child: TextFormField(
                            textDirection: TextDirection.rtl,
                            maxLines: null,
                            onSaved: (value) {
                              setState(() {
                                notes = value!;
                              });
                            },
                            decoration: const InputDecoration(
                                hintTextDirection: TextDirection.rtl,
                                hintText: "إبدا الكتابة ........... ",
                                border: OutlineInputBorder()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _data.containerborder,
                  Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: _data.subTitleText("الحقول الخاصة بالراتب  :")),
                  GridView(
                      padding: const EdgeInsets.only(bottom: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _data.responsivevaild(context),
                          mainAxisExtent: 100),
                      children: [
                        Container(
                          margin: _data.margin,
                          child: CoustomTextField(
                            userinput: income,
                            icon: const Icon(FontAwesomeIcons.moneyBill,
                                color: Colors.deepPurple),
                            hintName: "الراتب",
                            labelText: "الراتب",
                            validator: (p0) {
                              return _data.numberValidator(p0!, "الراتب");
                            },
                          ),
                        ),
                        Container(
                            margin: _data.margin,
                            child: CoustomTextField(
                              userinput: otherOrg,
                              icon: const Icon(Icons.foundation_rounded,
                                  color: Colors.deepPurple),
                              labelText: "منظمات أخرى",
                              hintName: "منظمات أخرى ",
                              validator: (p0) {
                                return _data.StringValidator(
                                    p0!, "منظمات إخرى   ");
                              },
                            )),
                        Container(
                          margin: _data.margin,
                          child: CustomDropDownButton(
                            type: _data
                                .buildMapIncomeType(_data.incomeHousingnumber),
                            iconcolor: Colors.deepPurple,
                            counter: _data.incomeHousingnumber,
                            text: this.incomeType,
                            icon: const Icon(Icons.monetization_on_rounded),
                            setstate: (Function() setState) {},
                            labelText: "نوع الراتب",
                          ),
                        )
                      ]),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        image.isNotEmpty
                            ? GridView.builder(

                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: image.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Image.network(
                                    image[index].path,
                                  );
                                },
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount:
                                            Responsive.isDesktop(context)
                                                ? 3
                                                : 2,
                                        mainAxisSpacing: 5,
                                        mainAxisExtent: 400),
                              )
                            : Icon(Icons.image, size: 80),
                        SizedBox(height: 20),
                        Center(
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.purple.shade800,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: uplodingimage,
                              child: const Text(
                                "إضافة صورة  ",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(color: Colors.white),
                              )),
                        ),SizedBox(height: 20,)
                      ],
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.key1.currentState?.reset();
                          image.clear();
                        });
                      },
                      child: AnimatedButton(
                        controller: _controller,
                        icon: Icon(
                          CupertinoIcons.xmark_circle,
                          size: 30,
                          color: Colors.black,
                        ),
                        text: 'حذف البيانات ',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: GestureDetector(
                      onTap: () {
                        if (this.widget.key1.currentState!.validate()) {
                          //this.widget.key1.;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }
                      },
                      child: AnimatedButton(
                        controller: _controller,
                        icon: Icon(
                          Icons.done_outline_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                        text: 'رفع البيانات',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ]),
          ),
        ));
  }
}
