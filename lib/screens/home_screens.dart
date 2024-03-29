
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/categories_widget.dart';
import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:divyangjan_frontend/widgets/tabar_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 12.0, top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: IconButtonWidget(
                        icon: Icon(
                          Icons.notifications,
                          size: 24.0,
                        ),
                        iconColor: AppColors.secondaryText,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    IconButtonWidget(
                      icon: Icon(
                        Icons.person_3,
                        size: 24.0,
                      ),
                      iconColor: AppColors.upComingColor,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 14.0, bottom: 12.0),
                child: TextWidget(
                    title: AppString.homeCate,
                    textColor: AppColors.primaryText,
                    textFontSize: 26,
                    textFontWeight: FontWeight.w700),
              ),
              const CategoriesWidget(),
              const Padding(
                padding: EdgeInsets.only(top: 12.0, left: 14.0, bottom: 12.0),
                child: TextWidget(
                    title: AppString.homeCamp,
                    textColor: AppColors.primaryText,
                    textFontSize: 26,
                    textFontWeight: FontWeight.w700),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.shortestSide,
          
                decoration: const BoxDecoration(
                  color: AppColors.secondaryBackground,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22.0),
                      topRight: Radius.circular(22.0)),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.cardShadow,
                        offset: Offset(1, 2),
                        blurRadius: 1),
                  ],
                ),
                child: const TabBarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




























































































































    // CardWidget(
            //     campCity: AppString.campCity,
            //     campAdd: AppString.campAdd,
            //     date: AppString.date,
            //     enroll: AppString.close,
            //     enrollBgcolor: AppColors.primaryText,
            //     status: AppString.onGoing,
            //     statusBgcolor: AppColors.primaryText,
            //     due: AppString.dueTime,
            //     ),