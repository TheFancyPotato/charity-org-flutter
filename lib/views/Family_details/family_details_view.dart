import 'package:charity_org/views/Family_details/Invocies/InvoicesView.dart';
import 'package:charity_org/views/SettingViews/SettingView.dart';
import 'package:flutter/material.dart';

import '../../responsive.dart';
import 'family_information/family_information_view.dart';

class FamilyDetails extends StatefulWidget {
  const FamilyDetails({Key? key}) : super(key: key);

  @override
  State<FamilyDetails> createState() => _FamilyDetailsState();
}

class _FamilyDetailsState extends State<FamilyDetails>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("تفاصيل العائلة الكاملة  ",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
          bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade400,
              indicatorColor: Colors.black,
              controller: tabController,
              tabs: const [
                Tab(
                  text: "معلومات العائلة   ",
                ),
                Tab(
                  text: "المنح",
                )
              ]),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: [FamilyInformation(), InvoicesScreen()]),
            ),
          ],
        ));
  }
}
