import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../core/components/app_pages.dart';
import 'tabs/home_tab.dart';
import 'tabs/profile_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) => AppPage(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: appBottomNavBar(
          items: [
            appBottomNavItem(icon: Icons.home_rounded, label: "home".tr()),
            appBottomNavItem(icon: Icons.person_rounded, label: "profile".tr())
          ],
          onItemTapped: (index) => _onItemTapped(index),
          selectedIndex: _selectedIndex,
        ),
      );
}
