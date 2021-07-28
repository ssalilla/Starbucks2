import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 2;

  List<String> btns = ["Promotions", "Top Up", "Beverages"];

  Widget _btn(
      {required int index, required bool selected, required String title}) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          this.selectedIndex = index;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
          color: selected ? AppTheme.menuItemActiveColor : Colors.transparent,
          child: Text(
            "$title",
            style: TextStyle(
                color: selected ? Colors.white : AppTheme.menuItemActiveColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: List.generate(
            btns.length,
            (index) => _btn(
                index: index,
                selected: this.selectedIndex == index,
                title: this.btns[index])),
      ),
    );
  }
}
