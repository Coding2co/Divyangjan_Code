import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';

class ListViewWidget extends StatelessWidget {
  final int tabIndex;
  const ListViewWidget({Key? key, required this.tabIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
         
        if (tabIndex == 0) {
          return const CardWidget(
            campCity: AppString.campCity,
            campAdd: AppString.campAdd,
            date: AppString.date,
            enroll: AppString.close,
            enrollBgcolor: AppColors.secondaryText,
            status: AppString.onGoing,
            statusBgcolor: AppColors.onGoingColor,
            due: AppString.due, 
            startDate:AppString.startTime, 
            start:AppString.start,
          );
        } else if (tabIndex == 1) {
          return const CardWidget(
            campCity: AppString.campCity,
            campAdd: AppString.campAdd,
            date: AppString.date,
            enroll: AppString.enroll,
            enrollBgcolor: AppColors.primaryText,
            status: AppString.upCome,
            statusBgcolor: AppColors.upComingColor,
            due: AppString.due, 
            startDate:AppString.startTime, 
            start:AppString.start,
          );
        } else if (tabIndex == 2) {
          return const CardWidget(
            campCity: AppString.campCity,
            campAdd: AppString.campAdd,
            date: AppString.date,
            enroll: AppString.close,
            enrollBgcolor: AppColors.secondaryText,
            status: AppString.complete,
            statusBgcolor: AppColors.completedColor,
            due: AppString.due,
            startDate:AppString.startTime, 
            start:AppString.start,
           
             
          );
        }
        return Container(); // Return a container for any other cases
      },
    );
  }
}
