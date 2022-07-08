import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/core/themes/app_colors.dart';

import '../../../../core/components/components.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.light1,
      child: Center(
        child: textP("Home Tab", 14),
      ),
    );
  }
}
