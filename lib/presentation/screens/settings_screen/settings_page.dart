import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../logic/theme_cubit/theme_cubit.dart';
import '../../components/app_pages.dart';
import '../../components/app_texts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppPage(
        appBar: AppAppBar(
          title: "setting".tr(),
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
                        const HeadlineMedium(text: "Theme"),
                        RadioListTile(
                          value: ThemeMode.light,
                          groupValue: state.themeMode,
                          onChanged: (value) =>
                              BlocProvider.of<ThemeCubit>(context)
                                  .changeAppTheme(
                            themeMode: ThemeMode.light,
                          ),
                          title: const BodyMedium(text: "Light"),
                        ),
                        RadioListTile(
                          value: ThemeMode.dark,
                          groupValue: state.themeMode,
                          onChanged: (value) =>
                              BlocProvider.of<ThemeCubit>(context)
                                  .changeAppTheme(
                            themeMode: ThemeMode.dark,
                          ),
                          title: const BodyMedium(text: "Dark"),
                        ),
                        RadioListTile(
                          value: ThemeMode.system,
                          groupValue: state.themeMode,
                          onChanged: (value) =>
                              BlocProvider.of<ThemeCubit>(context)
                                  .changeAppTheme(
                            themeMode: ThemeMode.system,
                          ),
                          title: const BodyMedium(text: "System"),
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
