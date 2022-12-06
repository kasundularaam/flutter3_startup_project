import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/strings.dart';
import '../../../core/themes/app_theme.dart';
import '../../components/app_pages.dart';
import 'tabs/home_tab.dart';
import 'tabs/profile_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = [
    const HomeTab(),
    const ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return AppNavPage(
      body: _widgetOptions[_selectedIndex],
      navBar: BottomNavBar(
        onTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home_rounded,
            ),
            label: Strings.home.tr(),
            backgroundColor: appTheme.foregroundColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person_rounded,
            ),
            label: Strings.profile.tr(),
            backgroundColor: appTheme.foregroundColor,
          ),
        ],
      ),
    );
  }
}
