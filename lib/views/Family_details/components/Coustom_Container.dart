import 'package:flutter/material.dart';

class CoustomContainer extends StatelessWidget {
  CoustomContainer(
      {super.key,
      required this.familydetail,
      required this.infoicon,
      required this.valueOfDetail});
  String familydetail;
  String valueOfDetail;
  Widget infoicon;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 65,
        height: 85,
        margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20, top: 10),
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                infoicon,
                Text(familydetail,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
            Text(
              valueOfDetail,
              style: TextStyle(color: Colors.grey[600]),
            )
          ],
        ));
  }
}
