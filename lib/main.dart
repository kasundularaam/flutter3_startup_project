import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'core/constants/strings.dart';
import 'core/themes/app_theme.dart';
import 'logic/cubit/auth_cubit/auth_cubit.dart';
import 'logic/cubit/theme_cubit/theme_cubit.dart';
import 'presentation/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('si')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: BlocProvider(
          create: (context) => ThemeCubit(),
          child: const App(),
        )),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ThemeCubit>(context).loadTheme();
    return Sizer(builder: (context, orientation, deviceType) {
      return BlocProvider(
        create: (context) => AuthCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: _buildWithTheme,
        ),
      );
    });
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: state.appTheme == AppTheme.lightTheme ? lightTheme : darkTheme,
      darkTheme: darkTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
