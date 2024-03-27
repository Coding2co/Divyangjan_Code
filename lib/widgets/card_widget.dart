import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/status_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String campCity;
  final String campAdd;
  final String enroll;
  final String status;
  final String date;
  final String due;
  final Color enrollBgcolor;
  final Color statusBgcolor;

  const CardWidget({
    super.key,
    required this.campCity,
    required this.campAdd,
    required this.date,
    required this.enroll,
    required this.enrollBgcolor,
    required this.status,
    required this.statusBgcolor,
    required this.due,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, left: 14.0, right: 14.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColors.cardShadow,
                offset: Offset(0, 2),
              ),
              BoxShadow(color: AppColors.primaryBackground, offset: Offset.zero)
            ],
            color: AppColors.secondaryBackground,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey, width: 2.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  title: campCity,
                  textColor: AppColors.blackText,
                  textFontSize: 21,
                  textFontWeight: FontWeight.w500),
              TextWidget(
                  title: campAdd,
                  textColor: AppColors.secondaryText,
                  textFontSize: 16,
                  textFontWeight: FontWeight.w500),
              const Divider(
                height: 24.0,
                thickness: 0.6,
                color: AppColors.secondaryText,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   const Column(
                    children:[
                           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         TextWidget(
                              title:AppString.start,
                              textColor: AppColors.blackText,
                              textFontSize: 16,
                              textFontWeight: FontWeight.w600,
                              ),
                      
                        SizedBox(
                          width: 10.0,
                        ),
                        TextWidget(
                            title:AppString.startTime ,
                            textColor: AppColors.primaryText,
                            textFontSize: 18,
                            textFontWeight: FontWeight.w800,
                            ),
                      ],
                    ),
                    Row(
                      children: [
                         TextWidget(
                              title:AppString.due,
                              textColor: AppColors.blackText,
                              textFontSize: 16,
                              textFontWeight: FontWeight.w600,
                              ),
                      
                        SizedBox(
                          width: 10.0,
                        ),
                        TextWidget(
                            title:AppString.date ,
                            textColor: AppColors.primaryText,
                            textFontSize: 18,
                            textFontWeight: FontWeight.w800,
                            ),
                      ],
                    )
                    ] 
                    
                  ),
  
                  SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: StatusWidget(
                              statusTitle: enroll,
                              cardBgcolor: enrollBgcolor,
                              cardWidth: 70.0,
                              cardHeight: 40.0,
                              ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        StatusWidget(
                            statusTitle: status,
                            cardBgcolor: statusBgcolor,
                            cardWidth: 100.0,
                            cardHeight: 40.0,
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}












































                      //  tabIndex == 0 ? StatusWidget(
                      //       statusTitle: enroll,
                      //       cardBgcolor: enrollBgcolor,
                      //       cardWidth: 70.0,
                      //       cardHeight: 40.0) : tabIndex == 1 ? StatusWidget(
                      //       statusTitle: enroll,
                      //       cardBgcolor: enrollBgcolor,
                      //       cardWidth: 70.0,
                      //       cardHeight: 40.0) : tabIndex == 2 ? StatusWidget(
                      //       statusTitle: enroll,
                      //       cardBgcolor: enrollBgcolor,
                      //       cardWidth: 70.0,
                      //       cardHeight: 40.0) : Container() ;