import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/providers/cartProvider.dart';

import 'mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StarBucks',
        theme: ThemeData(
            unselectedWidgetColor: AppTheme.green,
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppTheme.backgroundColor,
            backgroundColor: AppTheme.backgroundColor),
        home: MainScreen(),
      ),
    );
  }
}
