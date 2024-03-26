import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';


class PassworddWidget extends StatelessWidget {
  final String labelText;
  final double boxWidth;
  final double boxHeight;
  final bool obsecureStatus;
  final bool? isShow;
  final Icon? icon;
  final String? txtErrorMsg;
  final Color? borderColor;
  final Function? onChanged;


  final TextEditingController controller;


  const PassworddWidget(
      {super.key,
      required this.labelText,
      required this.boxWidth,
      required this.boxHeight,
      required this.controller,
      required this.obsecureStatus,  //!passwordCtrl.isShow.value
      this.onChanged, // passwordCtrl.showPassword();
      this.isShow,
      this.icon,
      this.txtErrorMsg,
      this.borderColor,
      
      
      });
  @override
  Widget build(BuildContext context) {
    return
    // Obx(() => 
       Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 5.0),
      child: SizedBox(
        width:boxWidth,  //375
        height:boxHeight,  //60
        child: TextField(
          keyboardType:TextInputType.phone ,
          obscureText:obsecureStatus,
          controller: controller,  
          decoration:InputDecoration(
            alignLabelWithHint: true,
            errorText: txtErrorMsg,
            errorStyle: const TextStyle(
              height: 2.0,
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
            suffixIcon:IconButton(icon: Icon(
          obsecureStatus ? Icons.visibility_off : Icons.visibility
            ), onPressed: () { 
               onChanged!();
             },
             ),



            floatingLabelBehavior: FloatingLabelBehavior.auto,

            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? Colors.transparent,
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
          style:TextStyle(
            fontSize: 14.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            background: Paint()..color = AppColors.primaryBackground,
          ),
          
        ),
      ),

     
    );

    // );
    
    
    
  }
}