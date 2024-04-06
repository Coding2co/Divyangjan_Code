import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  Rx<XFile?> imageFile1 = Rx<XFile?>(null);
  Rx<XFile?> imageFile2 = Rx<XFile?>(null);
  Rx<XFile?> imageFile3 = Rx<XFile?>(null);
  Rx<XFile?> imageFile4 = Rx<XFile?>(null);

  Future<void> pickImage(ImageSource source, int index) async {
    final pickedFile = await ImagePicker().pickImage(
        source: source, imageQuality: 75, maxHeight: 740, maxWidth: 740);
    if (pickedFile != null) {
      final originalFile = XFile(pickedFile.path);

      switch (index) {
        case 1:
          imageFile1.value = originalFile;
          break;
        case 2:
          imageFile2.value = originalFile;
          break;
        case 3:
          imageFile3.value = originalFile;
          break;
        case 4:
          imageFile4.value = originalFile;
       
        
      }
      Get.back();
    } else {
      Get.back();
    }
  }

  void removeImage1() {
    imageFile1.value = null;
  }

  void removeImage2() {
    imageFile2.value = null;
  }

  void removeImage3() {
    imageFile3.value = null;
  }

  void removeImage4() {
    imageFile4.value = null;
  }
}
