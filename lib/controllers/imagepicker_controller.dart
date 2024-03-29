import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final imageFile = Rxn<File>();

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source,imageQuality: 75,maxHeight: 740,maxWidth: 740);
    if (pickedFile != null) {
     final originalFile = File(pickedFile.path); 
     final originalFileSize = await originalFile.length();
     imageFile.value = originalFile;
     Get.back();
     if (kDebugMode) {
     print('Original Size: ${originalFileSize / (1024 * 1024)} MB');
   }
   }    
   else{
    Get.back();
   }
    }
    void removeImage() {
    imageFile.value = null;
  }

  }
  










// class ImagePickerController extends GetxController{
//   Rx<File?> imageFile = Rx<File?>(null);

//   Future<void> pickImage(ImageSource source) async {
//     final pickedFile = await ImagePicker().pickImage(source: source);
//     if (pickedFile != null) {
//       imageFile.value = File(pickedFile.path);
//     }
//   }
// }