


import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0,
        height: 400.0,
        decoration: BoxDecoration(
          border: Border.all(
            color:AppColors.secondaryText,
            width: 2.0
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Center(
          child:Text('History Page',style: TextStyle(
              color: AppColors.blackText,
              fontSize: 20.0,
              
          ),
          textAlign: TextAlign.center,
          ),
        ),
      ));
  }
}