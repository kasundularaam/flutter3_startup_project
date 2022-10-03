import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/core/themes/app_theme.dart';
import 'package:sizer/sizer.dart';

import '../../../components/app_pages.dart';
import '../../../components/app_texts.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return AppTab(
      appBar: AppAppBar(title: "home".tr()),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 40,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: appTheme.foregroundColor,
              borderRadius: BorderRadius.circular(5)),
          child: BodyLarge(text: "$index"),
        ),
      ),
    );
  }
}
