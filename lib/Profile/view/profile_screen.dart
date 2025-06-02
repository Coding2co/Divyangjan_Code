// ignore_for_file: prefer_const_constructors

import 'package:divyangjan_frontend/Profile/widgets/content_view_widget.dart';
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/button_widget.dart';
import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: AppColors.secondaryText,
          size: 24,
        ),
        title: const TextWidget(
          title: AppString.pro,
          textColor: AppColors.primaryText,
          textFontSize: 22.0,
          textFontWeight: FontWeight.w500,
          textSpace: 0.2,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: AppColors.secondaryBackground,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.boxShadowColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/images/sai_baba.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 14.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          TextWidget(
                            title:
                                'Andhra Pradesh MedTech Zone,Visakhapatnam, India',
                            textColor: AppColors.blackText,
                            textFontSize: 16,
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          TextWidget(
                            title: '9390232323',
                            textColor: AppColors.secondaryText,
                            textFontSize: 14,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                child: TextWidget(
                  title: AppString.account,
                  textColor: AppColors.secondaryText,
                  textFontSize: 16.0,
                ),
              ),
              ContentViewWidget(
                leadingIcon: Icon(
                  Icons.account_circle_outlined,
                  size: 24,
                  color: AppColors.secondaryText,
                ),
                titleText: AppString.editPro,
                trailingIcon: IconButtonWidget(
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                  ),
                  onChanged: () => Get.defaultDialog(title: 'Working Here'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextWidget(
                  title: AppString.appSetting,
                  textColor: AppColors.secondaryText,
                  textFontSize: 16.0,
                ),
              ),
              ContentViewWidget(
                leadingIcon: Icon(
                  Icons.help_outline_rounded,
                  size: 24,
                  color: AppColors.secondaryText,
                ),
                titleText: AppString.support,
                trailingIcon: IconButtonWidget(
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                  ),
                  onChanged: () => Get.defaultDialog(title: 'Working Here'),
                ),
              ),
              ContentViewWidget(
                leadingIcon: Icon(
                  Icons.question_answer_outlined,
                  size: 24,
                  color: AppColors.secondaryText,
                ),
                titleText: AppString.faq,
                trailingIcon: IconButtonWidget(
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                  ),
                  onChanged: () => Get.defaultDialog(title: 'Working Here'),
                ),
              ),
              ContentViewWidget(
                leadingIcon: Icon(
                  Icons.description_outlined,
                  size: 24,
                  color: AppColors.secondaryText,
                ),
                titleText: AppString.terms,
                trailingIcon: IconButtonWidget(
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                  ),
                  onChanged: () => Get.defaultDialog(title: 'Working Here'),
                ),
              ),
              ContentViewWidget(
                leadingIcon: Icon(
                  Icons.privacy_tip_outlined,
                  size: 24,
                  color: AppColors.secondaryText,
                ),
                titleText: AppString.privacy,
                trailingIcon: IconButtonWidget(
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                  ),
                  onChanged: () => Get.defaultDialog(title: 'Working Here'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 123.0),
                child: Center(
                    child: ButtonWidget(
                  btnBorderRadius: 50,
                  btnHeight: 50,
                  btnColor: AppColors.primaryText,
                  onChanged: () {},
                  title: 'Log Out',
                  btnBorderColor: AppColors.secondaryBackground,
                  btnTextColor: AppColors.secondaryBackground,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
