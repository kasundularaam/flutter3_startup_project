import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/core/themes/app_theme.dart';

import 'app_texts.dart';

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
    if (appBar != null) {
      return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [appBar!],
            floatHeaderSlivers: true,
            body: body,
          ),
        ),
        bottomNavigationBar: navBar,
      );
    }
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: body,
      ),
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
    return SliverAppBar(
      title: HeadlineMedium(text: title),
      elevation: 0,
      backgroundColor: Theme.of(context).foregroundColor,
      foregroundColor: Theme.of(context).onGroundColorLow,
      centerTitle: true,
      actions: actions,
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
