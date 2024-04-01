import 'dart:io';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:divyangjan_frontend/controllers/imagepicker_controller.dart';
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatelessWidget {
  final ImagePickerController controller;
  const ImagePickerWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.5,
      height: MediaQuery.of(context).size.height * 0.15,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.secondaryBackground,
      ),
      child: Obx(
        () => controller.imageFile.value != null
            ? Stack(
                fit: StackFit.expand,
                children: [
                  Image.file(
                    File(controller.imageFile.value!.path),
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.red,
                        size: 20,
                        weight: 20,
                      ),
                      onPressed: () {
                        controller.removeImage();
                      },
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("button pressed");
    
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return bottomSheetWidget(context, controller);
                        },
                      );
                    },
                    child: const Icon(
                      Icons.add_a_photo,
                      color: AppColors.primaryText,
                      size: 18.0,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextWidget(
                      title: AppString.imgTxt,
                      textColor: AppColors.secondaryText,
                      textFontSize: 10.0,
                      textFontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
      ),
    );
  }
}

Widget bottomSheetWidget(BuildContext context, controller) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: double.infinity,
    height: size.height * 0.2,
    color: AppColors.secondaryBackground,
    child: Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TextWidget(
              title: AppString.imgTxt,
              textColor: AppColors.blackText,
              textFontSize: 20,
              textFontWeight: FontWeight.w500),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButtonWidget(
                    icon: const Icon(Icons.camera),
                    iconSize: 30,
                    iconColor: AppColors.upComingColor,
                    onChanged: () {
                      controller.pickImage(ImageSource.camera);
                    },
                  ),
                  const SizedBox(height: 3.0),
                  const TextWidget(
                      title: AppString.cam,
                      textColor: AppColors.blackText,
                      textFontSize: 16.0,
                      textFontWeight: FontWeight.w500),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButtonWidget(
                    icon: const Icon(Icons.image),
                    iconColor: AppColors.upComingColor,
                    iconSize: 30.0,
                    onChanged: () {
                      controller.pickImage(ImageSource.gallery);
                    },
                  ),
                  const SizedBox(height: 3.0),
                  const TextWidget(
                      title: AppString.gallery,
                      textColor: AppColors.blackText,
                      textFontSize: 16.0,
                      textFontWeight: FontWeight.w500),
                ],
              ),
            ],
          ),
        ],
      ),
      Positioned(
        top: 0,
        right: 0,
        child: IconButton(
          icon: const Icon(
            Icons.close,
            color: AppColors.blackText,
            weight: 40,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    ]),
  );
}
