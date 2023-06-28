import 'package:charity_org/views/Family_details/Invocies/Invoices_View_Model.dart';
import 'package:flutter/material.dart';

import 'components/customChart.dart';

class InvoicesScreen extends StatelessWidget {
  InvoicesScreen({Key? key}) : super(key: key);
  InvociesViewModel _data = InvociesViewModel();
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  late double totalMoney;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "${totalMoney = _data.invoices.fold(0, (sum, invoice) => sum + invoice.amount)}د.ع   ",
                  style: TextStyle(fontSize: 60),
                  textDirection: TextDirection.rtl,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: _data.invoices.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    mainAxisExtent: 60,
                    crossAxisCount: _data.responsivevaild(context)),
                itemBuilder: (context, index) {
                  return _data.invoiceCard(index, "اسم الموظف", date, time);
                },
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ));
  }
}
