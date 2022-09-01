import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/app_texts.dart';
import '../../../../core/themes/app_colors.dart';

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
        child: AppHeading(text: "home".tr()),
      ),
    );
  }
}
