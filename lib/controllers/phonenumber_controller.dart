
import 'package:get/get.dart';

class PhoneNumberController extends GetxController{

  final phoneNumber = ''.obs;

  String? validatePhoneNumber(String value){

    if(value.isEmpty){
      return "smsmms ";
    }
    else if(value.length!=10){
      return "Phone Number must be 10 digit long";
    }
    return null; 
  }


  
  void setPhoneNumber(String value){
    phoneNumber.value = value;
  }
}