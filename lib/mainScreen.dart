import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/header.dart';
import 'package:starbucks/components/navBar.dart';
import 'package:starbucks/pages/productsList.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
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
                  child: Column(
                    children: [
                      Expanded(
                          child: Center(
                              child: Navigator(
                        key: navKey,
                        pages: [
                          MaterialPage(
                              name: "homePage",
                              key: ValueKey("main-screen"),
                              child: ProductsList())
                        ],
                        onPopPage: (i, r) {
                          return true;
                        },
                      ))),
                    ],
                  )))
        ],
      ),
    );
  }
}
