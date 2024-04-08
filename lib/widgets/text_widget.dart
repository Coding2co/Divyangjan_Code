import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final Color textColor;
  final double textFontSize;
  final FontWeight textFontWeight;
  final double? textSpace;
  final TextAlign? align;
  const TextWidget({super.key,required this.title,required this.textColor,required this.textFontSize,required this.textFontWeight,this.textSpace,this.align});

  @override
  Widget build(BuildContext context) {
    return  Text(
            title,
            textAlign:align ,
            style: TextStyle(
              color:textColor,
              fontSize: textFontSize,
              fontWeight: textFontWeight,
              letterSpacing: textSpace,
              
            ),
      
    );
  }
}