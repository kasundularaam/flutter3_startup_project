import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/strings.dart';
import '../../../../logic/register_cubit/register_cubit.dart';
import '../../../components/app_alerts.dart';
import '../../../components/app_buttons.dart';
import '../../../components/app_inputs.dart';
import '../../../components/app_navigation.dart';
import '../../../components/app_pages.dart';
import '../../../components/components.dart';
import '../../../../core/constants/assets_paths.dart';
import '../../../../data/models/register_req.dart';
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
          const VSpacer(height: 5),
          Image.asset(AssetsPaths.user),
          const VSpacer(height: 3),
          InputName(
            controller: nameCtrl,
            hint: Strings.name.tr(),
          ),
          const VSpacer(height: 1),
          InputEmail(
            controller: emailCtrl,
            hint: Strings.email.tr(),
          ),
          const VSpacer(height: 1),
          InputPhone(
            controller: phoneCtrl,
            hint: Strings.phone.tr(),
          ),
          const VSpacer(height: 1),
          InputText(
            controller: addressCtrl,
            hint: Strings.address.tr(),
          ),
          const VSpacer(height: 1),
          InputNumber(
            controller: ageCtrl,
            hint: Strings.age.tr(),
          ),
          const VSpacer(height: 1),
          InputPassword(
            controller: passwordCtrl,
            hint: Strings.password.tr(),
          ),
          const VSpacer(height: 1),
          InputPassword(
            controller: confirmCtrl,
            hint: Strings.confirmPassword.tr(),
          ),
          const VSpacer(height: 1),
          BlocConsumer<RegisterCubit, RegisterState>(
            listener: (context, state) {
              if (state is RegisterFailed) {
                showErrorBar(context, state.message);
              }
              if (state is RegisterSucceed) {
                showSucceedBar(context, Strings.registerSucceed.tr());
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
                  onPressed: () =>
                      BlocProvider.of<RegisterCubit>(context).register(
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
                  text: Strings.register.tr());
            },
          )
        ],
      ),
    );
  }
}
