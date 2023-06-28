import 'package:charity_org/models/family.dart';
import 'package:charity_org/responsive.dart';
import 'package:flutter/material.dart';
import 'package:charity_org/models/family.dart';

import '../../../models/family.dart';
import '../family_information/family_information_view.dart';
import '../family_information/family_information_view_model.dart';
import 'components/customGridView.dart';

class EditFamilyInformation extends StatefulWidget {
  EditFamilyInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<EditFamilyInformation> createState() => _FamilyInformationState();
}

class _FamilyInformationState extends State<EditFamilyInformation> {
  FamilyInfoViewModel _data = FamilyInfoViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: _data.title("المعلومات الرئيسية "),
              ),
              Divider(
                height: 3,
                color: Colors.grey,
              ),
              CustomGridView(
                x: 0,
                  listNames: _data.names,
                  listValues: _data.values,
                  crossAxisCount: _data.responsivevaild(context),
                  itemcount: 4),
              Container(
                width: double.maxFinite,
                child: Card(
                  shape: OutlineInputBorder(),
                  elevation: 4.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    textDirection: TextDirection.rtl,
                    children: [
                      _data.subTitleText(" الملاحظات  "),
                      Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.red),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30))),
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          "شعلان عبد الكريم "
                              "dsbffds"
                              "dbdfb"
                              "dbdbrb\nberb"
                              "b"
                              "b"
                              "b"
                              "b"
                              "bbb"
                              "b"
                              "b"
                              "bbbb"
                              "dsvdb"
                              ""
                              "scacscvv"
                              "vvvv\n"
                              ""
                              "cv"
                              "vsvssw"
                              "vddv\nd"
                              "vd"
                              "v"
                              "d"
                              "vsvdsvd"
                              "vd"
                              "vd"
                              "vd"
                              "svdsvdsv"
                              "dsv"
                              "ds"
                              "v"
                              "dvs"
                              "vdvs"
                              "dvdv \n",
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: _data.title("معلومات اخرى"),
              ),
              Divider(
                height: 3,
                color: Colors.grey,
              ),
              CustomGridView(
                x: 4,
                listNames: _data.names,
                  listValues: _data.values,
                  crossAxisCount: _data.responsivevaild(context),
                  itemcount: _data.names.length - 4),
              Center(
                child: OutlinedButton(
                    child: Text("إضغط للعودة المعلومات ",textDirection:TextDirection.rtl,style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FamilyInformation()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.purple.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}