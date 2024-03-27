
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Resources/Colors/app_colors.dart';
import '../controllers/password_controller.dart';


class PassworddWidget extends StatelessWidget {
  final String labelText;
  final double boxWidth;
  final double boxHeight;
  final TextEditingController controller;
  final PasswordController passwordController;

  const PassworddWidget({super.key, 
    required this.labelText,
    required this.boxWidth,
    required this.boxHeight,
    required this.controller, 
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: SizedBox(
        width: boxWidth,
        height: boxHeight,
        child: Obx(() => TextField(
          obscureText: passwordController.isPasswordVisible(controller),
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.primaryBackground,
            labelStyle: TextStyle(
              color: Colors.blueGrey[700],
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
            labelText: labelText,
            suffixIcon: IconButton(
              icon: Icon(passwordController.isPasswordVisible(controller) ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                passwordController.togglePasswordVisibility(controller);
              },
            ),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(
              borderSide:const BorderSide(
                color: AppColors.primaryBackground,
                style: BorderStyle.solid,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            background: Paint()..color = AppColors.primaryBackground,
          ),
        )),
      ),
    );
  }
}
