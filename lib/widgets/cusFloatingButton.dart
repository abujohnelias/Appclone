import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class CUsFloatingButton extends StatelessWidget {
  final bool isFloatingButtonChild_Text;
  final VoidCallback onPressed;
  final String? floatingbuttonText;
  final Color? floatingbuttonTextColor;
  final double? floatingbuttoTextSize;
  final IconData floatingbuttoIcon;
  final Color? floatingbuttoIconColor;
  final double? floatingbuttoIconSize;
  final double? floatingbuttonElevation;

  const CUsFloatingButton(
      {super.key,
      required this.onPressed,
      required this.isFloatingButtonChild_Text,
      this.floatingbuttonText,
      required this.floatingbuttoIcon,
      this.floatingbuttonElevation,
      this.floatingbuttonTextColor,
      this.floatingbuttoIconColor,
      this.floatingbuttoIconSize,
      this.floatingbuttoTextSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: isFloatingButtonChild_Text
            ? Text(
                floatingbuttonText!,
                style: GoogleFonts.poppins(
                    color: floatingbuttonTextColor,
                    fontSize: floatingbuttoTextSize),
              )
            : Icon(
                floatingbuttoIcon,
                color: floatingbuttoIconColor,
                size: floatingbuttoIconSize,
              ),
        elevation: floatingbuttonElevation,
      ),
    );
  }
}
