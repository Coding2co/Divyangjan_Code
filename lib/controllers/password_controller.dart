
import 'package:get/get.dart';

class PasswordController extends GetxController{

  final RxBool isShow = false.obs;

  void showPassword(){
      isShow.value = !isShow.value;
  }
}