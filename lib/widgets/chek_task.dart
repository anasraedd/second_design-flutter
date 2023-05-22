
import 'package:flutter/material.dart';

import 'check_circle.dart';

class CheckTask extends StatefulWidget {
  bool isChecked;
  final Color checkedColor;
  final Color uncheckedColor;
  final String text;
  final Color colorCircle;

  CheckTask({
    required this.isChecked,
    this.checkedColor = Colors.white,
    this.uncheckedColor = Colors.white,
    required this.text,
    required this.colorCircle,
  });

  @override
  State<CheckTask> createState() => _CheckTaskState();
}

class _CheckTaskState extends State<CheckTask> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              widget.isChecked = ! widget.isChecked;
            });
          },
          child: CheckCircle(
            isChecked: widget.isChecked,
            // Set to false to show unchecked circle
            checkedColor: widget.checkedColor,
            // Customize checked circle color (optional)
            uncheckedColor: widget.uncheckedColor,
            colorCircle: widget.colorCircle,// Customize unchecked circle color (optional)
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          widget.text,
          style: widget.isChecked ? TextStyle(color: widget.colorCircle != Colors.white ? Colors.white : Colors.black, fontSize: 14, decoration: TextDecoration.lineThrough): TextStyle(color: widget.colorCircle != Colors.white ? Colors.white : Colors.black, fontSize: 14),
        )
      ],
    );
  }
}

