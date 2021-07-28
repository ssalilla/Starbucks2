import 'package:flutter/material.dart';
import 'package:starbucks/components/header.dart';
import 'package:starbucks/components/navBar.dart';
import 'package:starbucks/pages/productsList.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          NavBar(),
          Expanded(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.centerRight,
                          image: AssetImage("assets/background.png"))),
                  child: ProductsList()))
        ],
      ),
    );
  }
}