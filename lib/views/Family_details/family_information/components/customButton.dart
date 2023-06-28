import 'package:flutter/material.dart';

import '../../EditFamilyInformation/EditFamilyInfoView.dart';
class customButton extends StatelessWidget {
  const customButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child: Text("إضغط لتعديل المعلومات ",textDirection:TextDirection.rtl,style: TextStyle(color: Colors.white),),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditFamilyInformation()),
          );
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.purple.shade800,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))));
  }
}