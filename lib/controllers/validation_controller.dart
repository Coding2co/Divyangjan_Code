
import 'package:get/get.dart';

class ValidationController extends GetxController{
  bool validateData(String phoneNumber,String password, {String? confirmPassword}){
        RegExp phoneNumberRegExp = RegExp(r'^[0-9]{10}$');
        RegExp passwordRegExp = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

        if(phoneNumber.isEmpty){
          Get.snackbar('Error', 'Phone Number Cannot be Empty',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        else if(password.isEmpty){
          Get.snackbar('Error', 'Password connot be Empty',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        else if(!passwordRegExp.hasMatch(password)){
          Get.snackbar('Invalid Password','Your password must contain \n 1. Contains at least one alphabet.  \n 2. Contains at least one digit. \n 3. Password length must be 8 characters long.',snackPosition: SnackPosition.BOTTOM);
          return false;

        }
        else if(confirmPassword.toString().isEmpty || confirmPassword!=null ){
          Get.snackbar('Error', 'Confirm Password cannot be Empty',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        
        else if(password == confirmPassword &&confirmPassword.toString().isEmpty){
          Get.snackbar('Error', 'Password and Confirm Password do not match',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        else if(!phoneNumberRegExp.hasMatch(phoneNumber)){
          Get.snackbar('Error', 'Invalid Phone Number',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        
                return true;
        
  }
}