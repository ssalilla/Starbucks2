import 'package:flutter/material.dart';
import 'package:starbucks/appLayout.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/customAppBar.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/providers/cartProvider.dart';

class CartConfirm extends StatelessWidget {
  const CartConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalPrice = context.read<CartProvider>().totalPrice;
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
                    "hi",
                    style: TextStyle(color: Colors.white),
                  ),
                  AppLayout.staticField(content: "    $totalPrice    "),
                  Text(
                    "hi",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              width: 1024,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppLayout.button(title: "hi", onPressed: () {}),
                  AppLayout.button(title: "hi", onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
