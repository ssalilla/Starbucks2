import 'package:flutter/material.dart';
import 'package:starbucks/components/customAppBar.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Center(
        child: Container(
          child: Text(
            "This is cart screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
