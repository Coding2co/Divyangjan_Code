import 'package:get/get.dart';

class PhoneNumberController extends GetxController{

  final RxString phoneNumber = ''.obs;
 

  String validatePhoneNumber(String value){
    // final RegExp regex= RegExp();
    // bool isValidate=regex.hasMatch(value);

   if(value.isEmpty){
    return'Please Enter Your Phone Number';
   }
 
   else if(value.length < 10 ){
    return  'Phone Number must be 10 digits';
   }

  return '';
 
  }

}