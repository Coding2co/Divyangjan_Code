// ignore_for_file: prefer_const_constructors

import 'package:divyangjan_frontend/Admin/AdminDashboard/view/dashboard_screen.dart';
import 'package:divyangjan_frontend/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/campaign_details_screen.dart';




void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        getPages: [
          GetPage(
            name: '/adminDashboardRouteName',
            page: () =>  AdminDashboard(),
          ),
          // GetPage(
          //   name: '/eligibilityScreenRoute',
          //   page: () =>  EligibilityScreen(),
          // ),
          // GetPage(
          //   name: '/registrationForm',
          //   page: (() => RegistrationScreen(isFrom: false)),
          // ),
          // GetPage(
          //     name: '/eligibleCandidateScreenRoute',
          //     page: () => RegistratedCandidatesWidget()),
        ],
        home: CampaignDetailsScreen());
  }
}
