import 'package:flutter/material.dart';
import 'package:starbucks/appTheme.dart';

class AppLayout {
  static Widget staticField(
      {String? content, TextAlign textAlign = TextAlign.center}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppTheme.green, width: 2)),
      child: Text(
        content ?? "",
        textAlign: textAlign,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }

  static Widget button(
      {required String title, IconData? icon, void Function()? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 26,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          Text(
            "$title",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: AppTheme.green,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
    );
  }

  static Future showconfirmDialog(BuildContext context,
      {String title = "Confirm", required String content}) async {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "Cancel",
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Text(
        "Confirm",
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      onPressed: () {
        Navigator.pop(context, true);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: AppTheme.backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: AppTheme.green, width: 2)),
      title: Text(
        "$title",
        style: TextStyle(color: Colors.white),
      ),
      content: Text(
        "$content",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    return showDialog(
      useRootNavigator: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
