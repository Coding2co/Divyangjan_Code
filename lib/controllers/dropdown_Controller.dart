// ignore_for_file: file_names


import 'package:divyangjan_frontend/Resources/Strings/appString.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DropDownController extends GetxController{
  final RxString selectedValue = AppString.regGender.obs;
  void setSelectedValue(String value){
    selectedValue.value = value;
  }
}