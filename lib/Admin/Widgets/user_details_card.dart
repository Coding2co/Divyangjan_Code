import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/button_widget.dart';
import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class UserDetailsCard extends StatelessWidget {
  final String personName;
  final String phoneNumber;
  final Function() onChanged;
  const UserDetailsCard(
      {super.key,
      required this.personName,
      required this.phoneNumber,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: ListTile(
            autofocus: false,
            leading: const IconButtonWidget(
              icon: Icon(
                Icons.person_2_rounded,
                color: AppColors.navyBlue,
              ),
              iconColor: AppColors.navyBlue,
              iconSize: 30,
            ),
            title: TextWidget(
                title: personName,
                textColor: AppColors.blackText,
                textFontSize: MediaQuery.of(context).size.width * 0.034,
                textFontWeight: FontWeight.w500),
            subtitle: TextWidget(
                title: phoneNumber,
                textColor: AppColors.secondaryText,
                textFontSize: 14,
                textFontWeight: FontWeight.normal),
            tileColor: AppColors.primaryBackground,
            trailing: ButtonWidget(
              btnWidth: MediaQuery.of(context).size.width / 4.5,
              btnHeight: 43,
              btnBorderRadius: 10,
              btnColor: AppColors.primaryText,
              onChanged: onChanged,
              title: AppString.view,
              btnTextColor: AppColors.secondaryBackground,
              btnTextFontWeight: FontWeight.w600,
              btnTxtSpace: 0,
            )),
      ),
    );
  }
}





// TextWidget(title: AppString.view, textColor: AppColors.secondaryBackground, textFontSize: 16, textFontWeight: FontWeight.w600),