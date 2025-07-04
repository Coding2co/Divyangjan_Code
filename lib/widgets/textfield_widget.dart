import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final double boxWidth;
  final double boxHeight;
  final Icon? icon;
  final int? txtMaxLine;
  final int? txtMaxLength;
  final int? txtMinLine;
  final String? txtErrorMsg;
  final Color? borderColor;
  final Function? onChanged;
  final double? txtFontSize;
  final FontWeight? textFontWeight;
  final TextInputType? type;

  final TextEditingController controller;

  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.boxWidth,
    required this.boxHeight,
    required this.controller,
    this.onChanged, // passwordCtrl.showPassword();
    this.icon,
    this.txtMaxLength,
    this.txtMaxLine,
    this.txtMinLine,
    this.txtErrorMsg,
    this.borderColor,
    this.textFontWeight,
    this.txtFontSize,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return
        // Obx(() =>
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: SizedBox(
        width: boxWidth, //375
        height: boxHeight, //60
        child: TextFormField(
          keyboardType: type ?? TextInputType.phone,
          maxLength: txtMaxLength ?? 50,
          maxLines: txtMaxLine,
          minLines: txtMinLine,
          controller: controller,
          onChanged: (value) {},
          decoration: InputDecoration(
            prefixIcon: icon,
            alignLabelWithHint: true,
            errorText: txtErrorMsg,
            errorStyle: const TextStyle(
              height: 0.0,
            ),
            filled: true,
            fillColor: AppColors.primaryBackground,
            counterText: '',
            // hoverColor: Colors.blue,
            labelStyle: const TextStyle(
              fontSize: 17.0,
              color: Colors.blue,
            ),
            label: Text(
              labelText,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.blueGrey[700],
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? AppColors.primaryBackground,
                style: BorderStyle.solid,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
          style: TextStyle(
            fontSize: txtFontSize ?? 14.0,
            color: Colors.black,
            fontWeight: textFontWeight ?? FontWeight.w400,
            // background: Paint()..color = AppColors.primaryBackground,
          ),
        ),
      ),
    );

    // );
  }
}
