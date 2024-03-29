


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../controllers/demo_imagepicker_controller.dart';

class ImagePickerDemo extends StatelessWidget {
  final ImageController imageController = Get.put(ImageController());

  ImagePickerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<ImageController>(
        builder: (controller) => Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/3,
              padding:const EdgeInsets.all(1.0),
              height: 100,
              child:  controller.image != null
                ? Image.file(File(controller.image!.path))
                : const Placeholder(),
            ),
           
          const  SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.pickImage(ImageSource.camera),
              child:const Text('Pick Image from Camera'),
            ),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.pickImage(ImageSource.gallery),
              child:const Text('Pick Image from Gallery'),
            ),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.removeImage,
              child:const Text('Remove Image'),
            ),
          ],
        ),
      );
  }
}
