import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'core/constants/strings.dart';
import 'core/themes/app_theme.dart';
import 'logic/auth_cubit/auth_cubit.dart';
import 'logic/theme_cubit/theme_cubit.dart';
import 'presentation/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('si')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const App()),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: Strings.appName,
          builder: (context, child) => AppTheme(
            light: myLightTheme,
            dark: myDarkTheme,
            child: child!,
          ),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      }),
    );
  }
}
