import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {
  final RxMap passwordVisibility = {}.obs;

  void togglePasswordVisibility(TextEditingController controller) {
    if (passwordVisibility.containsKey(controller)) {
      passwordVisibility[controller] = !passwordVisibility[controller]!;
    } else {
      passwordVisibility[controller] = true;
    }
    update();
  }

  bool isPasswordVisible(TextEditingController controller) {
    return passwordVisibility[controller] ?? true;
  }
}
