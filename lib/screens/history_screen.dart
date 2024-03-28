


import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/card_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
    
       appBar: AppBar(
        // leading: const Icon(Icons.arrow_back_rounded),
        elevation: 0,
        backgroundColor: AppColors.primaryBackground,
        title: const TextWidget(title: AppString.history, textColor: AppColors.primaryText, textFontSize: 24, textFontWeight: FontWeight.w700),
       ),
       body: Container(
        width: double.infinity,
        height: 175,
        color: AppColors.primaryBackground,
        child:  const CardWidget(campCity: AppString.campCity, campAdd: AppString.campAdd, status: AppString.status, due: AppString.on, date: AppString.regDate, statusBgcolor: AppColors.enrolledColor, enroll:AppString.view, startDate:AppString.startTime, start:AppString.start, enrollBgcolor: AppColors.upComingColor,),
       )
      
    );
  }
}














// Center(
//       child: Container(
//         width: 400.0,
//         height: 400.0,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color:AppColors.secondaryText,
//             width: 2.0
//           ),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: const Center(
//           child:Text('History Page',style: TextStyle(
//               color: AppColors.blackText,
//               fontSize: 20.0,
              
//           ),
//           textAlign: TextAlign.center,
//           ),
//         ),
//       ));