
import 'package:divyangjan_frontend/Resources/Colors/appColors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final Icon? icon;
  // final Function(String) onChanged;
  final TextEditingController controller;
  const TextFieldWidget(
      {super.key,
      required this.labelText,
      this.icon,
      required this.controller, 
      // required this.onChanged, 
      });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 5.0),
      child: SizedBox(
        width: 370,
        height: 60,
        child: TextField(
          maxLength: 50,
          maxLines: 2,
          minLines: 1,
          controller: controller,
          // onChanged: onChanged,
          decoration:InputDecoration(
            filled: true,
            fillColor: AppColors.primaryBackground,
            counterText: '',
            hoverColor: Colors.blue,
            labelStyle:const TextStyle(
              fontSize: 17.0,
              color: Colors.blue,
            ),
            label: Text(
              labelText,
              style: TextStyle(
                color: Colors.blueGrey[700],
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            prefixIcon: icon,
            prefixIconColor: Colors.indigo[900],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
          style:TextStyle(
            fontSize: 14.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            background: Paint()..color = AppColors.primaryBackground,
          ),
        ),
      ),
    );
  }
}