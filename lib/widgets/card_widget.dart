import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/status_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String campCity;
  final String campAdd;
  final String due;
  final String date;
  final String status;
  final Color statusBgcolor;
  final String start;
  final String startDate;
  final String enroll;
  final Color enrollBgcolor;
 

  const CardWidget({
    super.key,
    required this.campCity,
    required this.campAdd,
    required this.status,
    required this.due,
    required this.date,
    required this.statusBgcolor,
    required this.enroll,
    required this.startDate,
    required this.start,
    required this.enrollBgcolor, 
    
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
                    Column(
                    children:[
                           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                              title:start ?? '',
                              textColor: AppColors.blackText,
                              textFontSize: 16,
                              textFontWeight: FontWeight.w600,
                              ),
                      
                        const SizedBox(
                          width: 10.0,
                        ),
                        TextWidget(
                            title:startDate?? '',
                            textColor: AppColors.primaryText,
                            textFontSize: 18,
                            textFontWeight: FontWeight.w800,
                            ),
                      ],
                    ),
                    Row(
                      children: [
                         TextWidget(
                              title:due,
                              textColor: AppColors.blackText,
                              textFontSize: 16,
                              textFontWeight: FontWeight.w600,
                              ),
                      
                        const SizedBox(
                          width: 10.0,
                        ),
                        TextWidget(
                            title:date ,
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
                              statusTitle: enroll ?? '',
                              cardBgcolor: enrollBgcolor ?? AppColors.secondaryBackground,
                              cardWidth: 70.0,
                              cardHeight: 40.0,
                              ),
                        ),
                        const SizedBox(
                          width: 15.0,
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