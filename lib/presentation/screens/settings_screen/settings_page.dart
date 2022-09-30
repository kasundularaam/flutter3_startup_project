import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../core/themes/app_theme.dart';
import '../../../logic/theme_cubit/theme_cubit.dart';
import '../../components/app_pages.dart';
import '../../components/app_texts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return AppPage(
      appBar: AppAppBar(
        title: "setting".tr(),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: appTheme.foregroundColor,
                borderRadius: BorderRadius.circular(5)),
            child: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Column(
                  children: [
                    const HeadlineMedium(text: "Theme"),
                    RadioListTile<ThemeMode>(
                      activeColor: appTheme.primaryColor,
                      value: ThemeMode.light,
                      groupValue: state.themeMode,
                      onChanged: (value) =>
                          BlocProvider.of<ThemeCubit>(context).changeAppTheme(
                        themeMode: value!,
                      ),
                      title: const BodyMedium(text: "Light"),
                    ),
                    RadioListTile<ThemeMode>(
                      activeColor: appTheme.primaryColor,
                      value: ThemeMode.dark,
                      groupValue: state.themeMode,
                      onChanged: (value) =>
                          BlocProvider.of<ThemeCubit>(context).changeAppTheme(
                        themeMode: value!,
                      ),
                      title: const BodyMedium(text: "Dark"),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
