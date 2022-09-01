import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/components/app_alerts.dart';
import '../../../core/components/app_navigation.dart';
import '../../../core/components/app_pages.dart';
import '../../../core/components/app_texts.dart';
import '../../../core/constants/assets_paths.dart';
import '../../../logic/cubit/auth_cubit/auth_cubit.dart';
import '../../router/app_router.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AuthCubit>(context).getUser();
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          showErrorBar(context, state.message);
        }
        if (state is AuthNoUser) {
          navAndClear(context: context, route: AppRouter.loginPage);
        }
        if (state is AuthHasUser) {
          navAndClear(context: context, route: AppRouter.homePage);
        }
      },
      child: AppPage(
        body: Column(
          children: [
            Image.asset(AssetsPaths.landing),
            AppText(
              text: "app_name".tr(),
            )
          ],
        ),
      ),
    );
  }
}
