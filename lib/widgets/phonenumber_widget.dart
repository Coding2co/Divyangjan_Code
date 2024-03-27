import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Resources/Colors/app_colors.dart';
import '../controllers/phonenumber_controller.dart';

class PhoneNumberWidget extends StatelessWidget {
  final String labelText;
  final double boxWidth;
  final double boxHeight;
  final PhoneNumberController phoneNumberController;
  final TextEditingController controller;
  final Icon? icon;
  final String? txtErrorMsg;
  final Color? borderColor;
  final Function(String)? onChanged;
  final String? errorText;

  const PhoneNumberWidget(
    {super.key,
    required this.labelText,
    required this.boxWidth,
    required this.boxHeight,
    required this.controller,
    required this.phoneNumberController,
     this.icon, 
     this.txtErrorMsg, 
     this.borderColor, 
     this.onChanged,
     this.errorText
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 5.0),
      child: SizedBox(
        width:boxWidth,  //375
        height:boxHeight,  //60
        child: 
       TextFormField(
          keyboardType:TextInputType.phone ,
          controller: controller,
          onChanged:onChanged,
          validator: (value) => phoneNumberController.validatePhoneNumber(value ?? ""),
          decoration:InputDecoration(
            alignLabelWithHint: true,
            // errorText:errorText,
            errorStyle: const TextStyle(
              height: 0.0,
            ),
            filled: true,
            fillColor: AppColors.primaryBackground,
            counterText: '',
            // hoverColor: Colors.blue,
            labelStyle:const TextStyle(
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
          style:const TextStyle(
            fontSize: 14.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            // background: Paint()..color = AppColors.primaryBackground,
          ),    
        ),
        
        ),
      );
  }
}