import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../components/app_buttons.dart';
import '../../../components/app_navigation.dart';
import '../../../components/app_pages.dart';
import '../../../components/app_texts.dart';
import '../../../router/app_router.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return AppTab(
      appBar: AppAppBar(
        title: "profile".tr(),
        actions: [
          ButtonText(
            onPressed: () =>
                navPush(context: context, route: AppRouter.settingsPage),
            icon: Icons.ac_unit,
          )
        ],
      ),
      body: const HeadlineLarge(
        text: "HELLO",
      ),
    );
  }
}
