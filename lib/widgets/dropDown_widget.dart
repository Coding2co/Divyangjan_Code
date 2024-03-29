import 'package:divyangjan_frontend/controllers/dropdown_Controller.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Resources/Colors/app_colors.dart';

class DropDownWidget extends StatelessWidget {
  final DropdownController controller;
  final List<String> options;
  final String hintText;
  final double dropdownWidth;
  final double dropdownHeight;
  final VoidCallback? onChanged;
  const DropDownWidget(
      {super.key,
      required this.controller,
      required this.options,
      required this.hintText,
      required this.dropdownHeight,
      this. onChanged,
      required this.dropdownWidth,
    
      }
      );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: dropdownWidth,
        height: dropdownHeight,
        padding:const EdgeInsets.only(left: 6.0, right: 4.0, top: 4.0, bottom: 4.0),
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          border: Border.all(color:const Color.fromARGB(255, 136, 139, 143), width: 1.4),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            elevation: 0,
            isExpanded: true,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            style: const TextStyle(
              // height:10.0,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
            value: controller.selectedValue.value.isEmpty
                ? null
                : controller.selectedValue.value,
            onChanged: (newValue) {
              controller.setSelectedValue(newValue!);
            },
            hint: Text(hintText),
            items: options
                .map<DropdownMenuItem<String>>(
                  (value) => DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextWidget(
                          title: value,
                          textColor: AppColors.blackText,
                          textFontSize: 16.0,
                          textFontWeight: FontWeight.w400),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
