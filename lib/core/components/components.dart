import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../themes/app_colors.dart';

Widget vSpacer(double height) => SizedBox(height: height.h);
Widget hSpacer(double width) => SizedBox(width: width.w);
Widget get nothing => const SizedBox();
Widget spinner({Color? color}) =>
    CircularProgressIndicator(color: color ?? AppColors.primaryColor);
