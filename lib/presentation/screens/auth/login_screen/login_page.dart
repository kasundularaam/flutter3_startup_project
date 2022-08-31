import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/core/components/app_buttons.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/components/app_inputs.dart';
import '../../../../core/components/app_pages.dart';
import '../../../../core/components/components.dart';
import '../../../../core/constants/assets_paths.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppPage(
        body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      children: [
        vSpacer(5),
        Image.asset(AssetsPaths.user),
        vSpacer(3),
        InputEmail(
          controller: emailCtrl,
          hint: "email".tr(),
        ),
        vSpacer(1),
        InputPassword(
          controller: emailCtrl,
          hint: "password".tr(),
        ),
        vSpacer(1),
        ButtonFilled(onTap: () => {}, text: "login".tr())
      ],
    ));
  }
}
