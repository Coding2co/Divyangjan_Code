import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../Resources/Colors/app_colors.dart';

class PinCode extends StatelessWidget {
  const PinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: PinCodeTextField(
        appContext: context,
        hintCharacter: "•",
        length: 6, // Length of the OTP
        onChanged: (value) {
          // Handle OTP changes
        },
        onCompleted: (value) {
          // Handle completed OTP
        },
        // Optional customization
        // You can customize as per your requirement
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15),
          fieldHeight: 44,
          fieldWidth: 48,
          activeColor: Colors.black,
          selectedColor: AppColors.primaryText,
          inactiveColor: Colors.grey,
        ),
      ),
    );
  }
}
