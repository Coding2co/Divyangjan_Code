

import 'package:get/get.dart';

class DropdownController extends GetxController{
  final selectedValue = "".obs;
  
  void setSelectedValue(String value){
    selectedValue.value = value;
  }

 
}