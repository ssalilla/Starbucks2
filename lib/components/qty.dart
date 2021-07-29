import 'package:flutter/material.dart';
import 'package:starbucks/appLayout.dart';

class QtyInput extends StatefulWidget {
  QtyInput(
      {Key? key, required this.value, this.min = 1, required this.onChange})
      : super(key: key);
  final int value;
  final int min;
  final Function(int) onChange;

  @override
  _QtyInputState createState() => _QtyInputState();
}

class _QtyInputState extends State<QtyInput> {
  late int value;

  @override
  void initState() {
    this.value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {
            if (this.value <= widget.min) {
              return;
            }
            this.value -= 1;
            setState(() {});
            widget.onChange(this.value);
          },
          icon: Icon(
            Icons.remove,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        AppLayout.staticField(content: "$value"),
        SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {
            this.value += 1;
            setState(() {});
            widget.onChange(this.value);
          },
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
