import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter3_startup_project/core/themes/app_theme.dart';
import 'package:sizer/sizer.dart';

import 'components.dart';

class AppPage extends StatelessWidget {
  final Widget body;
  final Widget? appBar;
  final Widget? navBar;
  const AppPage({
    Key? key,
    required this.body,
    this.appBar,
    this.navBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).backgroundColor,
        statusBarIconBrightness: Theme.of(context).brightness,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: appBar != null
              ? Column(
                  children: [
                    appBar ?? const Nothing(),
                    Expanded(child: body),
                  ],
                )
              : body,
        ),
        bottomNavigationBar: navBar,
      ),
    );
  }
}

class AppAppBar extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  const AppAppBar({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
      decoration: BoxDecoration(color: Theme.of(context).foregroundColor),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
