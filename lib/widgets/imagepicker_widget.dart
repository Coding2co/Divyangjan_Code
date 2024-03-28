import 'dart:io';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:divyangjan_frontend/controllers/imagepicker_controller.dart';
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImagePickerController controller = Get.put(ImagePickerController());
    return Container(
      width: 110,
      height: 140,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.secondaryBackground,
      ),
      child: Obx(() => controller.imageFile.value != null ? Image.file(File(controller.imageFile.value!.path)) : Column(children: [
         ElevatedButton(
        onPressed: () {
          controller.pickImage();
        },
        child: const Icon(Icons.add_a_photo,color: AppColors.primaryText,size: 18.0,),
      ),
    const Padding(
      padding:EdgeInsets.all(5.0),
      child: TextWidget(title: AppString.imgTxt, textColor:AppColors.secondaryText, textFontSize: 10.0, textFontWeight:FontWeight.normal),
    )
      ],),
    ),
    );
  }
}
