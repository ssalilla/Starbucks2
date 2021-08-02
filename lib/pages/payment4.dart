import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/customAppBar.dart';

class Payment4 extends StatelessWidget {
  const Payment4({Key? key}) : super(key: key);

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
                    "ขอบพระคุณที่ใช้บริการ" ,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
