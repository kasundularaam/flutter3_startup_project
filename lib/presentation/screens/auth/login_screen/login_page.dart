import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/strings.dart';
import '../../../../logic/login_cubit/login_cubit.dart';
import '../../../components/app_alerts.dart';
import '../../../components/app_buttons.dart';
import '../../../components/app_inputs.dart';
import '../../../components/app_navigation.dart';
import '../../../components/app_pages.dart';
import '../../../components/components.dart';
import '../../../../core/constants/assets_paths.dart';
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
          const VSpacer(height: 5),
          Image.asset(AssetsPaths.user),
          const VSpacer(height: 3),
          InputEmail(
            controller: emailCtrl,
            hint: Strings.email.tr(),
          ),
          const VSpacer(height: 1),
          InputPassword(
            controller: emailCtrl,
            hint: Strings.password.tr(),
          ),
          const VSpacer(height: 1),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginFailed) {
                showErrorBar(context, state.message);
              }
              if (state is LoginSucceed) {
                showSucceedBar(context, Strings.loginSucceed.tr());
                emailCtrl.clear();
                passwordCtrl.clear();
                navAndClear(context: context, route: AppRouter.landingPage);
              }
            },
            builder: (context, state) {
              return ButtonFilled(
                  onPressed: () => BlocProvider.of<LoginCubit>(context).login(
                      email: emailCtrl.text, password: passwordCtrl.text),
                  text: Strings.login.tr());
            },
          )
        ],
      ),
    );
  }
}
