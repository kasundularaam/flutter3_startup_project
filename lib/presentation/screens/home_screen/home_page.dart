import 'package:flutter/material.dart';
import '../../../core/components/app_pages.dart';
import '../../../data/models/app_user.dart';
import 'tabs/home_tab.dart';
import 'tabs/profile_tab.dart';

class HomePage extends StatefulWidget {
  final AppUser appUser;
  const HomePage({
    Key? key,
    required this.appUser,
  }) : super(key: key);

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
        appBar: AppBar(),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: appBottomNavBar(
          items: [
            appBottomNavItem(icon: Icons.home_rounded, label: "Home"),
            appBottomNavItem(icon: Icons.person_rounded, label: "Profile")
          ],
          onItemTapped: (index) => _onItemTapped,
          selectedIndex: 1,
        ),
      );
}
