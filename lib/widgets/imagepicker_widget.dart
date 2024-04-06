import 'dart:io';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Resources/Colors/app_colors.dart';

class ImagePickerWidget extends StatelessWidget {
  final XFile? imagePath;
  final Function() onImgRemovedPressed;
  final Function() onPressedCamera;
  final Function() onPressedGallery;
  final Function() onPressedBackButton;
  const ImagePickerWidget({
    Key? key,
    required this.imagePath,
    required this.onImgRemovedPressed,
    required this.onPressedCamera,
    required this.onPressedGallery,
    required this.onPressedBackButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedBackButton,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        height: 150,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppColors.secondaryBackground,
        ),
        child: imagePath != null
            ? Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      File(imagePath!.path),
                      fit: BoxFit.cover,
                    ),
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
                      onPressed: onImgRemovedPressed,
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
                          return bottomSheetWidget(
                              context, onPressedCamera, onPressedGallery);
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

Widget bottomSheetWidget(BuildContext context, Function() onPressedCamera,
    Function() onPressedGallery) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: double.infinity,
    height: size.height * 0.2,
    color: AppColors.secondaryBackground,
    child: Column(
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
                  onChanged: onPressedCamera,
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
                  onChanged: onPressedGallery,
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
  );
}