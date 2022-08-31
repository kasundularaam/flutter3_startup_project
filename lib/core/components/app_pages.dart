// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../themes/app_colors.dart';

class AppPage extends StatelessWidget {
  final Widget body;
  final AppBar? appBar;
  final BottomNavigationBar? bottomNavigationBar;
  const AppPage({
    Key? key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: AppColors.primaryColor,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
            backgroundColor: AppColors.primaryColor,
            appBar: appBar,
            body: SafeArea(
              child: body,
            ),
            bottomNavigationBar: bottomNavigationBar),
      );
}

BottomNavigationBar appBottomNavBar({
  required int selectedIndex,
  required Function(int) onItemTapped,
  required List<BottomNavigationBarItem> items,
}) =>
    BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.shifting,
      currentIndex: selectedIndex,
      selectedItemColor: AppColors.light0,
      unselectedItemColor: AppColors.light0.withOpacity(0.7),
      iconSize: 40,
      onTap: onItemTapped,
      elevation: 5,
    );

BottomNavigationBarItem appBottomNavItem(
        {required IconData icon, required String label}) =>
    BottomNavigationBarItem(
      icon: Icon(
        icon,
      ),
      label: label,
      backgroundColor: AppColors.primaryColor,
    );