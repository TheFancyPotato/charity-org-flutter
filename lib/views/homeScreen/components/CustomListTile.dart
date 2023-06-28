//import 'package:charity_org/views/Family%20information%20screen/FamilyInformatiomView.dart';
import 'package:flutter/material.dart';

import '../../Family_details/family_details_view.dart';

class CustomListTile extends StatelessWidget {
  int leading;
  String title;
  CustomListTile({Key? key, required this.leading, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const  FamilyDetails()));
      },
      leading: Text("${this.leading}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      title: Text(
        this.title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
