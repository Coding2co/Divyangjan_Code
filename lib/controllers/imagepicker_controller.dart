import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final imageFile = Rxn<File>();

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(
        source: source, imageQuality: 75, maxHeight: 740, maxWidth: 740);
    if (pickedFile != null) {
      imageFile.value  = File(pickedFile.path);
      Get.back();
    } else {
      Get.back();
    }
  }

  void removeImage() {
    imageFile.value = null;
  }
}
  






