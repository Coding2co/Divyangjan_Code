import 'package:divyangjan_frontend/Admin/Widgets/dashboard_card_widget.dart';
import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Resources/Strings/app_strings.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'assets/images/sai_baba.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextWidget(
                title: AppString.appName,
                textColor: AppColors.primaryText,
                textFontSize: 24,
                textFontWeight: FontWeight.w800,
                textSpace: 1.0,
              ),
              const SizedBox(
                height: 40.0,
              ),
              Card(
                semanticContainer: true,
                elevation: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.cardShadow, offset: Offset.infinite)
                    ],
                    color: AppColors.secondaryBackground,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                            title: AppString.adminProfile,
                            textColor: AppColors.upComingColor,
                            textFontSize: 24,
                            textFontWeight: FontWeight.w800),
                        Expanded(
                          child: GridView.builder(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            itemCount: 3,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 15,
                                    mainAxisSpacing: 15),
                            itemBuilder: (context, index) {
                              return index == 0
                                  ? DashboardCardWidget(
                                      onTap: () {
                                        Get.toNamed('eligibilityScreenRoute');
                                      },
                                      cardIcon: const Icon(
                                        Icons.people,
                                        color: AppColors.navyBlue,
                                      ),
                                      title: '12000',
                                      subTitle: AppString.totalReg)
                                  : index == 1
                                      ? DashboardCardWidget(
                                          cardIcon:const  Icon(
                                            Icons.campaign,
                                            color: AppColors.navyBlue,
                                          ),
                                          title: '22',
                                          subTitle: AppString.totCamp,
                                          onTap: () {},
                                        )
                                      : DashboardCardWidget(
                                          cardIcon: const Icon(
                                            Icons.place_rounded,
                                            color: AppColors.navyBlue,
                                          ),
                                          title: '120',
                                          subTitle: AppString.totcent,
                                          onTap: () {},
                                        );
                            },
                
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
