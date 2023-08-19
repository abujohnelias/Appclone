import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CusIconButton extends StatelessWidget {
  final IconData iconbuttonIcon;
  final double iconbuttonPadding;
  final Color iconbuttonIconColor;
  final onPressed;
  const CusIconButton(
      {super.key,
      required this.iconbuttonPadding,
      this.onPressed,
      required this.iconbuttonIcon,
      required this.iconbuttonIconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(iconbuttonPadding),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(iconbuttonIcon,color: iconbuttonIconColor,),
          color: iconbuttonIconColor),
        
    );
  }
}
