import 'package:charity_org/views/Family_details/components/Coustom_Container.dart';
import 'package:charity_org/views/Family_details/family_details_view_model.dart';
import 'package:flutter/material.dart';
import 'package:charity_org/util/responsive.dart';

import '../homeScreen/home_screen.dart';
import 'components/Coustom_button.dart';

class Family_details extends StatefulWidget {
  const Family_details({Key? key}) : super(key: key);

  @override
  State<Family_details> createState() => _Family_detailsState();
}

class _Family_detailsState extends State<Family_details> {
  FamilyDetailsViewModel _data = FamilyDetailsViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 40, right: 40, bottom: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CoustomButton(icon: Icons.home, color: Colors.deepOrange),
                      _data.PageTitle
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: Responsive.isTablet(context) ||
                              Responsive.isMobile(context)
                          ? _data.infofamily.length
                          : _data.infofamily.length - 5,
                      itemBuilder: (context, index) {
                        return CoustomContainer(
                            familydetail: _data.familydetail[index],
                            infoicon: _data.icons[index],
                            valueOfDetail: _data.infofamily[index]);
                      },
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    Container(
                      width: 250,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: Responsive.isDesktop(context)
                            ? _data.infofamily.length - 6
                            : 0,
                        itemBuilder: (context, index) {
                          return CoustomContainer(
                              familydetail: _data.familydetail[index + 6],
                              infoicon: _data.icons[index + 6],
                              valueOfDetail: _data.infofamily[index + 6]);
                        },
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
