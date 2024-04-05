import 'package:divyangjan_frontend/Admin/Widgets/floating_actionBtn.dart';
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Resources/Strings/app_strings.dart';
import '../../Widgets/dashboard_card_widget.dart';

class EligibilityScreen extends StatelessWidget {
  const EligibilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
            title: AppString.eligibility,
            textColor: AppColors.blackText,
            textFontSize: 18.0,
            textFontWeight: FontWeight.w600),
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: AppColors.secondaryText,
        ),
        backgroundColor: AppColors.primaryBackground,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return index == 0
                    ? DashboardCardWidget(
                        onTap: () {},
                        cardIcon: const Icon(
                          Icons.person,
                          color: AppColors.navyBlue,
                        ),
                        title: '600',
                        subTitle: AppString.eligibleCandi)
                    : index == 1
                        ? DashboardCardWidget(
                            cardIcon: const Icon(
                              Icons.person_off,
                              color: AppColors.navyBlue,
                            ),
                            title: '22',
                            subTitle: AppString.ineligibleCandi,
                            onTap: () {
                              Get.toNamed('/adminDashboardRouteName');
                            },
                          )
                        : Container();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButtonWidget(
          onClicked:()=> Get.toNamed('/adminDashboardRouteName'),
          icon: const Icon(
            Icons.person_add_alt_1,
            color: AppColors.secondaryBackground,
          )),
    );
  }
}
