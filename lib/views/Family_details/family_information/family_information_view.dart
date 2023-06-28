import 'dart:core';
import 'dart:html';

import 'package:charity_org/models/family.dart';
import 'package:charity_org/responsive.dart';
import 'package:flutter/material.dart';
import 'package:charity_org/models/family.dart';

import '../../../models/family.dart';
import '../EditFamilyInformation/EditFamilyInfoView.dart';
import 'components/customButton.dart';
import 'components/customGridView.dart';
import 'family_information_view_model.dart';

class FamilyInformation extends StatefulWidget {
  FamilyInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<FamilyInformation> createState() => _FamilyInformationState();
}

class _FamilyInformationState extends State<FamilyInformation> {
  final FamilyInfoViewModel _data = FamilyInfoViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: _data.title("المعلومات الرئيسية "),
              ),
              _data.divider,
              CustomGridView(
                  x: 0,
                  crossAxisCount: _data.responsivevaild(context),
                  listNames: _data.names,
                  listValues: _data.values,
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
                            border: Border.all(color: Colors.purple.shade800),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30))),
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          _data.notestext,
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
              _data.divider,
              CustomGridView(
                  x: 4,
                  crossAxisCount: _data.responsivevaild(context),
                  listNames: _data.names,
                  listValues: _data.values,
                  itemcount: _data.names.length - 4),
              const Center(
                child: customButton(),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
