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
}
