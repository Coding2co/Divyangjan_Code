
import 'package:get/get.dart';

class ValidationController extends GetxController{
  bool validateData(String phoneNumber,String password, confirmPassword){
        RegExp phoneNumberRegExp = RegExp(r'^[0-9]{10}$');
        RegExp passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');


        if(phoneNumber.isEmpty){
          Get.snackbar('Error', 'Phone Number Cannot be Empty',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        else if(password.isEmpty){
          Get.snackbar('Error', 'Password connot be Empty',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        else if(!passwordRegExp.hasMatch(password)){
          Get.snackbar('Invalid Password','Your password must\n 1. Contains at least one UpperCase letter.  \n 2. Contains at leat one LowerCase letter. \n 3. Contains at least one Special Character. \n 4. Contains at least one digit. \n 5. Password length must be 8 characters long.',snackPosition: SnackPosition.BOTTOM);
          return false;

        }
        else if(confirmPassword.isEmpty){
          Get.snackbar('Error', 'Confirm Password cannot be Empty',snackPosition: SnackPosition.BOTTOM);
          return false;
        }
        
        else if(password != confirmPassword){
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