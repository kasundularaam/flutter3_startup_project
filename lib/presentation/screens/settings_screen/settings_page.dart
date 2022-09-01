import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../core/components/app_pages.dart';
import '../../../core/components/app_texts.dart';
import '../../../core/themes/app_theme.dart';
import '../../../logic/cubit/theme_cubit/theme_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppPage(
        appBar: appBar(
          title: "settings",
        ),
        body: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(3.w),
                child: BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        const AppText(text: "Theme"),
                        RadioListTile(
                          value: AppTheme.lightTheme,
                          groupValue: state.appTheme,
                          onChanged: (value) =>
                              BlocProvider.of<ThemeCubit>(context).setTheme(
                            appTheme: AppTheme.lightTheme,
                          ),
                          title: const AppText(text: "Light"),
                        ),
                        RadioListTile(
                          value: AppTheme.darkTheme,
                          groupValue: state.appTheme,
                          onChanged: (value) =>
                              BlocProvider.of<ThemeCubit>(context).setTheme(
                            appTheme: AppTheme.darkTheme,
                          ),
                          title: const AppText(text: "Dark"),
                        )
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      );
}
