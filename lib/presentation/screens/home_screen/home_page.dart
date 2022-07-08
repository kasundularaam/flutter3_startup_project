// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter3_startup_project/data/models/app_user.dart';

import '../../../core/components/components.dart';

class HomePage extends StatelessWidget {
  final AppUser appUser;
  const HomePage({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: textP("Home Page", 14)),
    );
  }
}
