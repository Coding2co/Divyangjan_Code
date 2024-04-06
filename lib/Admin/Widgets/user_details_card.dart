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
  const UserDetailsCard({
    super.key,
    required this.personName,
    required this.phoneNumber,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            minVerticalPadding: 10,
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
              btnWidth: MediaQuery.of(context).size.width / 4.8,
              btnHeight: 35,
              btnBorderRadius: 10,
              btnColor: AppColors.primaryText,
              onChanged: onChanged,
              title: AppString.view,
              btnTextColor: AppColors.secondaryBackground,
              btnTextFontWeight: FontWeight.w500,
              btnTxtSpace: 0,
              btnTextFontSize: 14,
            )),
      ),
    );
  }
}
