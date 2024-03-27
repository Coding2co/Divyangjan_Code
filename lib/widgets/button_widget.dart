// ignore_for_file: use_key_in_widget_constructors

import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Function onChanged;
  final double btnWidth;
  final double btnHeight;
  final double btnBorderRadius;
  final Color btnColor;
  final Color? btnTextColor;
  final FontWeight? btnTextFontWeight;
  final double? btnTextFontSize;
  final double? btnTxtSpace;
  final Color? btnBorderColor;

  const ButtonWidget({
    Key? key,
    required this.btnWidth,
    required this.btnHeight,
    required this.btnBorderRadius,
    required this.btnColor,
    required this.onChanged,
    required this.title,
    this.btnTextColor,
    this.btnTextFontWeight,
    this.btnTextFontSize,
    this.btnTxtSpace,
    this.btnBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: btnWidth,
      height: btnHeight,
      child: ElevatedButton(
        onPressed: () {
          onChanged(); 
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(btnColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(btnBorderRadius),
                side: BorderSide(
                  color: btnBorderColor ?? Colors.transparent,
                  width: 3.0,
                )),
          ),
        ),
        child: TextWidget(
            title: title,
            textColor: btnTextColor ?? AppColors.secondaryText,
            textFontSize: btnTextFontSize ?? 16.0,
            textFontWeight: btnTextFontWeight ?? FontWeight.normal),
      ),
    );
  }
}
