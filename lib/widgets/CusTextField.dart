import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CusTextField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final double textfieldHeight;
  final double textfieldWidth;
  final double textfieldPadding;
  final double textfieldRadious;
  final Color? textfieldBorderColor;
  final Color? textfieldBorderFillColor;
  final bool? textfieldBorderIsFilled;

  const CusTextField({
    super.key,
    required this.textfieldHeight,
    required this.textfieldWidth,
    required this.textfieldPadding,
    required this.textfieldRadious,
    required this.textfieldBorderColor,
    this.textfieldBorderFillColor,
    this.textfieldBorderIsFilled,
    required this.onChanged,
  });

  @override
  State<CusTextField> createState() => _CusTextFieldState();
}

class _CusTextFieldState extends State<CusTextField> {
  String? inputt = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.textfieldHeight,
      width: widget.textfieldWidth,
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            fillColor: widget.textfieldBorderFillColor,
            filled: widget.textfieldBorderIsFilled,
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: widget.textfieldBorderColor!, width: 2),
                borderRadius: BorderRadius.circular(widget.textfieldRadious)),
            contentPadding: EdgeInsets.only(left: 50, top: 50),
            border: OutlineInputBorder(
                borderSide: BorderSide(),
                gapPadding: 50,
                borderRadius: BorderRadius.circular(widget.textfieldRadious))),
      ),
    );
  }
}
