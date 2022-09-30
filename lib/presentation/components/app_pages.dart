import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/themes/app_theme.dart';
import 'app_texts.dart';

class AppPage extends StatelessWidget {
  final Widget body;
  final Widget? appBar;
  const AppPage({
    Key? key,
    required this.body,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (appBar != null) {
      return Scaffold(
        backgroundColor: AppTheme.of(context).backgroundColor,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [appBar!],
            floatHeaderSlivers: true,
            physics: const BouncingScrollPhysics(),
            body: body,
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: AppTheme.of(context).backgroundColor,
      body: SafeArea(
        child: body,
      ),
    );
  }
}

class AppTab extends StatelessWidget {
  final Widget body;
  final Widget appBar;
  const AppTab({
    Key? key,
    required this.body,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [appBar],
      floatHeaderSlivers: true,
      physics: const BouncingScrollPhysics(),
      body: body,
    );
  }
}

class AppNavPage extends StatelessWidget {
  final Widget body;
  final Widget navBar;
  const AppNavPage({
    Key? key,
    required this.body,
    required this.navBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).backgroundColor,
      body: SafeArea(child: body),
      bottomNavigationBar: navBar,
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
    final appTheme = AppTheme.of(context);

    return SliverAppBar(
      title: HeadlineMedium(text: title),
      elevation: 0,
      backgroundColor: appTheme.foregroundColor,
      foregroundColor: appTheme.onGroundColorLow,
      centerTitle: true,
      actions: actions,
    );
  }
}

class BottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTapped;
  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTapped,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int get selectedIndex => widget.selectedIndex;
  Function get onItemTapped => widget.onTapped;
  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home_rounded,
          ),
          label: "home".tr(),
          backgroundColor: appTheme.foregroundColor,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.list_rounded,
          ),
          label: "requests".tr(),
          backgroundColor: appTheme.foregroundColor,
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: selectedIndex,
      selectedItemColor: appTheme.primaryColor,
      unselectedItemColor: appTheme.onGroundColorLow,
      iconSize: 40,
      onTap: (index) => onItemTapped(index),
      elevation: 5,
    );
  }
}
