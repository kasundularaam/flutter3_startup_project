// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/core/components/components.dart';
import 'package:sizer/sizer.dart';

import '../themes/app_colors.dart';

TextStyle textStyle({Color? color}) => TextStyle(
      color: color ?? AppColors.light0,
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    );

TextStyle get ebStyle => textStyle();

TextStyle tbStyle({Color? color}) => textStyle(
      color: color ?? AppColors.primaryColor,
    );

class ButtonFilled extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color? color;
  final IconData? icon;
  const ButtonFilled({
    Key? key,
    required this.onTap,
    required this.text,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
          backgroundColor:
              color != null ? MaterialStateProperty.all(color) : null,
        ),
        child: Row(
          children: [
            Text(
              text,
              style: ebStyle,
            ),
            hSpacer(3),
            Icon(
              icon,
              color: AppColors.light0,
            )
          ],
        ),
      );
}

class ButtonText extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color? color;
  const ButtonText({
    Key? key,
    required this.onTap,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: () => onTap(),
        child: Text(
          text,
          style: tbStyle(color: color),
        ),
      );
}
