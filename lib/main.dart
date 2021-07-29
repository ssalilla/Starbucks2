import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';

import 'mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StarBucks',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppTheme.backgroundColor,
          backgroundColor: AppTheme.backgroundColor),
      home: MainScreen(),
    );
  }
}
