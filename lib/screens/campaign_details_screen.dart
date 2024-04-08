import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/campaign_details_card.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CampaignDetailsScreen extends StatelessWidget {
 
  const CampaignDetailsScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
     final List<TitleValueModel>items =[
      TitleValueModel(title: AppString.campName,value: 'Vizag Steel Plant AMTZ'),
      TitleValueModel(title: AppString.campAddress,value: 'AndhraPradesh MedtechZone AndhraPradesh India 543433 AndhraPradesh MedtechZone'),
      TitleValueModel(title: AppString.totSeats,value: '500'),
      TitleValueModel(title: AppString.totCandi,value: '300'),
      TitleValueModel(title: AppString.availSeats,value: '200'),
      TitleValueModel(title: AppString.dueDate,value: '12-04-2024'),
      TitleValueModel(title: AppString.startDate,value: '27-04-2024'),
      

     ];
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(top: 28.0),
          child: TextWidget(
            title: 'Campaign Details',
            textColor: AppColors.primaryText,
            textFontSize: 24,
            textFontWeight: FontWeight.w800,
            textSpace: 0.3,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //navigation to back page.
              },
              icon: const Icon(
                Icons.close_rounded,
                size: 35.0,
                color: AppColors.secondaryText,
                weight: 20,
              ))
        ],
        backgroundColor: AppColors.primaryBackground,
      ),
      body: SafeArea(
        child:DetailCardWidget(isAdmin: false, btn1Name: 'Enroll', onPressedView: (){
          Get.defaultDialog(title: 'helo motto',);
        },items: items,btn2Name: 'Update',) ),
      
    );

  }

}
