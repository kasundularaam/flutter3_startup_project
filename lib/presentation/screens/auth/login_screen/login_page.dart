import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/components/app_alerts.dart';
import '../../../../core/components/app_buttons.dart';
import '../../../../core/components/app_inputs.dart';
import '../../../../core/components/app_navigation.dart';
import '../../../../core/components/app_pages.dart';
import '../../../../core/components/components.dart';
import '../../../../core/constants/assets_paths.dart';
import '../../../../logic/cubit/login_cubit/login_cubit.dart';
import '../../../router/app_router.dart';

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
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginFailed) {
                showErrorBar(context, state.message);
              }
              if (state is LoginSucceed) {
                showSucceedBar(context, "login_succeed".tr());
                emailCtrl.clear();
                passwordCtrl.clear();
                navAndClear(context: context, route: AppRouter.landingPage);
              }
            },
            builder: (context, state) {
              return ButtonFilled(
                  onTap: () => BlocProvider.of<LoginCubit>(context).login(
                      email: emailCtrl.text, password: passwordCtrl.text),
                  text: "login".tr());
            },
          )
        ],
      ),
    );
  }
}
