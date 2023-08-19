import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CusTextField extends StatelessWidget {
  final double textfieldHeight;
  final double textfieldWidth;
  final double textfieldPadding;
  final double textfieldRadious;
  const CusTextField(
      {super.key,
      required this.textfieldHeight,
      required this.textfieldWidth,
      required this.textfieldPadding,
      required this.textfieldRadious});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: textfieldHeight,
      width: textfieldWidth,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(textfieldRadious))),
      ),
    );
  }
}
