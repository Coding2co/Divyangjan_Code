

import 'package:divyangjan_frontend/widgets/bottomnavigation_widget.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationBarWidget(),
    );
  }
}