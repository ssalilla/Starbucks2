import 'package:flutter/material.dart';
import 'package:starbucks/appLayout.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/customAppBar.dart';
import 'package:starbucks/mainScreen.dart';
import 'package:starbucks/pages/payment4.dart';

class Payment3 extends StatelessWidget {
  const Payment3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 1024,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.green),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "กรุณารับบัตรคิวและเงินทอน" ,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              width: 1024,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLayout.button(title: "ยกเลิก", onPressed: () {
                    MainScreenState.navKey.currentState!
                        .popUntil((route) => route.isFirst);
                  }),
                  AppLayout.button(title: "ยินยัน", onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Payment4(),
                        ));},),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
