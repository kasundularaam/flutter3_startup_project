import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/app_navigation.dart';
import '../../../../core/components/app_pages.dart';
import '../../../router/app_router.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appBar(title: "profile".tr(), actions: [
          IconButton(
              onPressed: () =>
                  navPush(context: context, route: AppRouter.settingsPage),
              icon: const Icon(Icons.settings_rounded))
        ])
      ],
    );
  }
}
