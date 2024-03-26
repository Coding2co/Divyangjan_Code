
import 'package:divyangjan_frontend/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        home: SignUpScreen());
  }
}
