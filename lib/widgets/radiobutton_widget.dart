import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/controllers/radiobutton_controller.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';

class RadioButtonWidget extends StatelessWidget {
  final RadioButtonController controller = Get.put(RadioButtonController());

  RadioButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const TextWidget(title: 'Do you have locomotive disability?', textColor: Color.fromARGB(255, 67, 72, 77), textFontSize: 20.0, textFontWeight: FontWeight.w500),
         const SizedBox(width: 5),
          Expanded(
            child: Obx(
              () => SizedBox(
                child: Row(
                  children: [
                    Radio<String>(
                      value: 'Yes',
                      activeColor: AppColors.primaryText,
                      groupValue: controller.selectedValue.value,
                      onChanged: (value) {
                        controller.updateSelectedValue(value!);
                      },
                    ),
                   const TextWidget(title: 'Yes', textColor: AppColors.secondaryText, textFontSize: 18.0, textFontWeight: FontWeight.w500),
      
                    Radio<String>(
                      value: 'No',
                      activeColor: AppColors.primaryText,
                      groupValue: controller.selectedValue.value,
                      onChanged: (value) {
                        controller.updateSelectedValue(value!);
                      },
                    ),
                   const TextWidget(title: "No", textColor: AppColors.secondaryText, textFontSize: 16.0, textFontWeight: FontWeight.w500)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}