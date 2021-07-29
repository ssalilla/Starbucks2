import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';
import 'package:starbucks/components/customAppBar.dart';
import 'package:starbucks/components/header.dart';
import 'package:starbucks/components/navBar.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/pages/productsList.dart';
import 'package:starbucks/providers/routeProvider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String routeName = "/";

  @override
  Widget build(BuildContext context) {
    Widget routeWidget = context.watch<RouteProvider>().currentRouteWidget;

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
                      if (routeWidget.runtimeType != ProductsList)
                        CustomAppbar(),
                      Expanded(child: Center(child: routeWidget)),
                    ],
                  )))
        ],
      ),
    );
  }
}
