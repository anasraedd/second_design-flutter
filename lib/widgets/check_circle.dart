


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckCircle extends StatelessWidget {
  final bool isChecked;
  final Color checkedColor;
  final Color uncheckedColor;
  final Color colorCircle;

  const CheckCircle({
    required this.isChecked,
    this.checkedColor = Colors.green,
    this.uncheckedColor = Colors.grey,
    required this.colorCircle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isChecked ? checkedColor : uncheckedColor,
      ),
      child: Icon(
        isChecked ? Icons.check : Icons.circle,
        color: colorCircle,
        size: 20.0,
      ),
    );
  }
}