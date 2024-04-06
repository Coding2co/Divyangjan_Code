import 'dart:io';
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageWidget extends StatelessWidget {
  final XFile? imagePath;
  final Function() onImgRemovedPressed;
  final Function() onPressedCamera;
  final Function() onPressedGallery;
  final Function() onPressedBackButton;
  final String? titleName;

  const ProfileImageWidget({
    Key? key,
    required this.imagePath,
    required this.onImgRemovedPressed,
    required this.onPressedCamera,
    required this.onPressedGallery,
    required this.onPressedBackButton,
    this.titleName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
              width: 190,
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 21),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.secondaryBackground, width: 4),
                color: AppColors.primaryBackground,
              ),
              child: imagePath != null
                  ? Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
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
                            ),
                            onPressed: onImgRemovedPressed,
                          ),
                        ),
                      ],
                    )
                  : const Center(
                    child:TextWidget(
                        title: "Profile Photo",
                        textColor: AppColors.navyBlue,
                        textFontSize: 14,
                        textFontWeight: FontWeight.w400),
                  )),
          if (imagePath == null)
            Positioned(
              bottom: 4,
              right: 8,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return bottomSheetWidget(
                          context, onPressedCamera, onPressedGallery);
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.add_a_photo,
                  color: AppColors.primaryText,
                  size: 18.0,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

Widget bottomSheetWidget(BuildContext context, Function() onPressedCamera,
    Function() onPressedGallery) {
  // Size size = MediaQuery.of(context).size;
  return Container(
    width: double.infinity,
    height: 240,
    decoration: BoxDecoration(
      color: AppColors.secondaryBackground,
      borderRadius: BorderRadius.circular(40.0)
    ),
    
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
