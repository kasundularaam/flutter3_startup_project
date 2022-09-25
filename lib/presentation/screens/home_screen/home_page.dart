import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/core/themes/app_theme.dart';
import 'package:sizer/sizer.dart';

import '../../components/app_pages.dart';
import '../../components/app_texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      appBar: AppAppBar(title: "Hello"),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 40,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Theme.of(context).foregroundColor,
              borderRadius: BorderRadius.circular(5)),
          child: BodyLarge(text: "$index"),
        ),
      ),
    );
  }
}
