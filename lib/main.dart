import 'package:divyangjan_frontend/Admin/AdminDashboard/view/dashboard_screen.dart';
import 'package:divyangjan_frontend/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Admin/RegisteredCandidates/views/eligibility_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
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
            page: () => const AdminDashboard(),
          ),
          GetPage(
            name: '/eligibilityScreenRoute',
            page: () => const EligibilityScreen(),
          ),
          GetPage(
            name: '/registrationForm',
            page: (() => RegistrationScreen()),
          ),
        ],
        home: const AdminDashboard());
  }
}
