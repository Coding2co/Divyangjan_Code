
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DashboardCardWidget extends StatelessWidget {
  final Icon cardIcon;
  final String title;
  final String subTitle;
  final Function() onTap;

  const DashboardCardWidget({super.key,required this.cardIcon,required this.title,required this.subTitle,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Card(
        elevation: 1,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 160,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            borderRadius: BorderRadius.circular(12),
            
          ),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtonWidget(icon: cardIcon,iconColor: AppColors.navyBlue,iconSize: MediaQuery.of(context).size.width * 0.09,),
              TextWidget(title: title, textColor: AppColors.bluue, textFontSize:MediaQuery.of(context).size.width * 0.089, textFontWeight: FontWeight.w600),
              TextWidget(title: subTitle, textColor: AppColors.secondaryText, textFontSize:MediaQuery.of(context).size.width * 0.035, textFontWeight: FontWeight.w600),
            ],
          ),
        ),
      ),
    );
  }
}