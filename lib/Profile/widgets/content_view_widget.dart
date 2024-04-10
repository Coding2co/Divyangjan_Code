

import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ContentViewWidget extends StatelessWidget {
  final Icon leadingIcon;
  final String titleText;
  final Widget trailingIcon;
  const ContentViewWidget({super.key, required this.leadingIcon, required this.titleText, required this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.secondaryBackground,
        boxShadow: const [BoxShadow(color:AppColors.boxShadowColor,offset: Offset(0, 0),blurRadius: 3)]  
      ),
      child: Center(
        child: ListTile(
          leading:leadingIcon ,
          title: TextWidget(title: titleText,textColor: AppColors.secondaryText,textFontSize: 14.0,textFontWeight: FontWeight.normal,),
          trailing: trailingIcon,
        ),
      ),
    );
  }
}