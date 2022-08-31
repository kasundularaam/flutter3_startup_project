import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/app_colors.dart';

TextStyle hStyle({required Color color, required double size}) =>
    TextStyle(color: color, fontSize: size.sp, fontWeight: FontWeight.bold);

TextStyle pStyle({required Color color, required double size}) =>
    TextStyle(color: color, fontSize: size.sp);

TextStyle getHeadingStyle({required Color color, required int index}) {
  switch (index) {
    case 1:
      return hStyle(color: color, size: 32);
    case 2:
      return hStyle(color: color, size: 26);
    case 3:
      return hStyle(color: color, size: 22);
    case 4:
      return hStyle(color: color, size: 18);
    case 5:
      return hStyle(color: color, size: 14);
    case 6:
      return hStyle(color: color, size: 12);
    default:
      return hStyle(color: color, size: 32);
  }
}

TextStyle getParagraphStyle({required Color color, required int index}) {
  switch (index) {
    case 1:
      return pStyle(color: color, size: 26);
    case 2:
      return pStyle(color: color, size: 22);
    case 3:
      return pStyle(color: color, size: 18);
    case 4:
      return pStyle(color: color, size: 16);
    case 5:
      return pStyle(color: color, size: 14);
    case 6:
      return pStyle(color: color, size: 12);
    default:
      return pStyle(color: color, size: 26);
  }
}

class AppHeading extends StatelessWidget {
  final String text;
  final int? index;
  final Color? color;
  const AppHeading({
    Key? key,
    required this.text,
    this.index,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getHeadingStyle(
        color: color ?? AppColors.primaryColor,
        index: index ?? 3,
      ),
    );
  }
}

class AppText extends StatelessWidget {
  final String text;
  final int? index;
  final Color? color;
  const AppText({
    Key? key,
    required this.text,
    this.index,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getParagraphStyle(
        color: color ?? AppColors.primaryColor,
        index: index ?? 3,
      ),
    );
  }
}
