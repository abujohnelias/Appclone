import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class CusElevatedButton extends StatelessWidget {
  final bool IsYourButtonChildTEXT;
  VoidCallback onPressed;
  final IconData? buttonIcon;
  final Color? buttonIconColor;
  final String? buttonText;
  final Color? buttonTextColor;
  final Color? buttonColor;
  final double buttonRadious;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? buttonPadding;

  CusElevatedButton({
    super.key,
    required this.onPressed,
    this.buttonText,
    this.buttonTextColor,
    required this.buttonRadious,
    this.buttonColor,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    required this.IsYourButtonChildTEXT,
    this.buttonIcon,
    this.buttonIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(buttonPadding!),
      child: SizedBox(
        width: buttonWidth,
        height: buttonHeight,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Center(
              child: IsYourButtonChildTEXT
                  ? Text(
                      buttonText!,
                      style: GoogleFonts.poppins(color: buttonTextColor),
                    )
                  : Icon(
                      buttonIcon,
                      color: buttonIconColor,
                    )),
          style: ButtonStyle(
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(buttonRadious))),
            backgroundColor: MaterialStatePropertyAll(buttonColor),
          ),
        ),
      ),
    );
  }
}
