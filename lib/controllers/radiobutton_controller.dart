import 'package:get/get.dart';

class RadioButtonController extends GetxController {
  RxString selectedValue = ''.obs;

  void updateSelectedValue(String value) {
    selectedValue.value = value;
  }
}
