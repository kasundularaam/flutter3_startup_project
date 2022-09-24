import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/presentation/components/app_texts.dart';

import '../../../components/app_pages.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppAppBar(title: "home".tr()), HeadlineMedium(text: "text")],
    );
  }
}
