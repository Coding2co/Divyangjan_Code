

import 'package:get/get.dart';

class SigninValidator extends GetxController{

  bool validateCandidateData(String phoneNumber,String password){
     RegExp phoneNumberRegExp = RegExp(r'^[0-9]{10}$');
      // RegExp passwordRegExp = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    if(phoneNumber.isEmpty){
      Get.snackbar('Error', 'Phone Number cannot be Empty',snackPosition: SnackPosition.BOTTOM);
      return false;
    }
    else if(password.isEmpty){
      Get.snackbar('Error', 'password cannot be empty',snackPosition: SnackPosition.BOTTOM);
      return false;
    }
    else if(!phoneNumberRegExp.hasMatch(phoneNumber)){
      Get.snackbar('Error', 'Invalid Phone Number',snackPosition: SnackPosition.BOTTOM);
      return false;
    }
    return true;
  }
}