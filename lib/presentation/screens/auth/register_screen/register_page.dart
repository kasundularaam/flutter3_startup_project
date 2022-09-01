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
import '../../../../data/models/register_req.dart';
import '../../../../logic/cubit/register_cubit/register_cubit.dart';
import '../../../router/app_router.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController addressCtrl = TextEditingController();
  final TextEditingController ageCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController confirmCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppPage(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        children: [
          vSpacer(5),
          Image.asset(AssetsPaths.user),
          vSpacer(3),
          InputName(
            controller: nameCtrl,
            hint: "name".tr(),
          ),
          vSpacer(1),
          InputEmail(
            controller: emailCtrl,
            hint: "email".tr(),
          ),
          vSpacer(1),
          InputPhone(
            controller: phoneCtrl,
            hint: "phone".tr(),
          ),
          vSpacer(1),
          InputText(
            controller: addressCtrl,
            hint: "address".tr(),
          ),
          vSpacer(1),
          InputNumber(
            controller: ageCtrl,
            hint: "age".tr(),
          ),
          vSpacer(1),
          InputPassword(
            controller: passwordCtrl,
            hint: "password".tr(),
          ),
          vSpacer(1),
          InputPassword(
            controller: confirmCtrl,
            hint: "confirm_password".tr(),
          ),
          vSpacer(1),
          BlocConsumer<RegisterCubit, RegisterState>(
            listener: (context, state) {
              if (state is RegisterFailed) {
                showErrorBar(context, state.message);
              }
              if (state is RegisterSucceed) {
                showSucceedBar(context, "register_succeed".tr());
                nameCtrl.clear();
                emailCtrl.clear();
                phoneCtrl.clear();
                addressCtrl.clear();
                ageCtrl.clear();
                passwordCtrl.clear();
                confirmCtrl.clear();
                navAndClear(context: context, route: AppRouter.landingPage);
              }
            },
            builder: (context, state) {
              return ButtonFilled(
                  onTap: () => BlocProvider.of<RegisterCubit>(context).register(
                        registerReq: RegisterReq(
                          name: nameCtrl.text,
                          email: emailCtrl.text,
                          address: addressCtrl.text,
                          age: ageCtrl.text.isEmpty
                              ? -1
                              : int.parse(ageCtrl.text),
                          password: passwordCtrl.text,
                        ),
                      ),
                  text: "login".tr());
            },
          )
        ],
      ),
    );
  }
}
