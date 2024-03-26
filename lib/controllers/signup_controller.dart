
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

   final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController passwdCtrl = TextEditingController();
  final TextEditingController passwdcheckCtrl = TextEditingController();

  void registerUser(int phoneNumber , String password){

  }
}