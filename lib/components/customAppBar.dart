import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starbucks/providers/routeProvider.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final routeProvider = context.read<RouteProvider>();

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: BackButton(
        color: Colors.white,
        onPressed: () {
          routeProvider.setRouteWidget(url: "/");
        },
      ),
    );
  }
}
