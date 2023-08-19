import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CusTextField extends StatelessWidget {
  final double textfieldHeight;
  final double textfieldWidth;
  final double textfieldPadding;
  final double textfieldRadious;
  final Color? textfieldBorderColor;
  final Color? textfieldBorderFillColor;
  final bool? textfieldBorderIsFilled;
  const CusTextField(
      {super.key,
      required this.textfieldHeight,
      required this.textfieldWidth,
      required this.textfieldPadding,
      required this.textfieldRadious,
      required this.textfieldBorderColor,
      this.textfieldBorderFillColor,
      this.textfieldBorderIsFilled});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: textfieldHeight,
      width: textfieldWidth,
      child: TextField(
        decoration: InputDecoration(
            fillColor: textfieldBorderFillColor,
            filled: textfieldBorderIsFilled,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textfieldBorderColor!, width: 2),
                borderRadius: BorderRadius.circular(textfieldRadious)),
            contentPadding: EdgeInsets.only(left: 50, top: 50),
            border: OutlineInputBorder(
                borderSide: BorderSide(),
                gapPadding: 50,
                borderRadius: BorderRadius.circular(textfieldRadious))),
      ),
    );
  }
}
