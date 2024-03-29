
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  final _image = Rxn<XFile>();

  XFile? get image => _image.value;

  void pickImage(ImageSource source) async {
    XFile? pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      _image.value = pickedImage;
    }
  }

  void removeImage() {
    _image.value = null;
  }
}
