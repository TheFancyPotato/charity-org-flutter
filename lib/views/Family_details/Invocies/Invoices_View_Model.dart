import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';

import '../../../responsive.dart';

class InvociesViewModel {
  List invoices = [
    Invoice(amount: 400000),
    Invoice(amount: 600000),
    Invoice(amount: 400000),
  ];
  ListTile invoiceCard(int index, String name, DateTime date, TimeOfDay time) {
    return ListTile(
      leading: Container(
        //   color: Colors.lightGreenAccent,
        width: 5,
        height: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: chooseColor(index)),
      ),
      title: Text(name),
      subtitle: Text("${date.year.toString()}/${date.month}/${date.day}"),
      trailing: Column(
        children: [
          Text(
            '${invoices[index].amount.toString()}د.ع  ',
            textDirection: TextDirection.rtl,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "${time.hour}:${time.minute} ",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  int responsivevaild(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return 1;
    } else
      return 2;
  }

  Color chooseColor(int x) {
    if (x % 2 == 0) {
      return Colors.green;
    } else
      return Colors.purple.shade800;
  }
}

class Invoice {
  double amount;

  Invoice({required this.amount});
}
