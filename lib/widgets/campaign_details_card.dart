// ignore_for_file: must_be_immutable

import 'package:divyangjan_frontend/widgets/rich_text_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';
import 'button_widget.dart';

class DetailCardWidget extends StatelessWidget {
  final List<TitleValueModel>? items;
  final double? titleFontSize;
  final double? contentFontSize;
  final Color? titleFontColor;
  final Color? contentFontColor;
  final FontWeight? titleFontWeight;
  final FontWeight? contentFontWeight;
  final Function()? onPressedUpdate;
  final Function() onPressedView;
  final String btn1Name;
  final String? btn2Name;
  bool isAdmin;

  DetailCardWidget({
    super.key,
    this.items,
    this.titleFontSize,
    this.contentFontSize,
    this.titleFontColor,
    this.contentFontColor,
    this.titleFontWeight,
    this.contentFontWeight,
    required this.isAdmin,
    required this.btn1Name,
    this.btn2Name,
    this.onPressedUpdate,
    required this.onPressedView,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics:const NeverScrollableScrollPhysics(),
      child: Card(
        elevation: 2,
        shadowColor: AppColors.cardShadow,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.secondaryBackground,
            border: Border.all(color: AppColors.cardShadow, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                    alignment: Alignment.topRight,
                    child: TextWidget(
                      title: 'Active',
                      textColor: AppColors.completedColor,
                      textFontSize: 18,
                      textFontWeight: FontWeight.w900,
                      align: TextAlign.end,
                    )),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: RichTextWidget(
                          title: items?[index].title,
                          content: items?[index].value,
                          titleColor: titleFontColor,
                          titleFontSize: titleFontSize,
                          titleFontWeight: titleFontWeight,
                          contentColor: contentFontColor,
                          contentFontSize: contentFontSize,
                          contentFontWeight: contentFontWeight,
                        ),
                      );
                    }),

            
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonWidget(
                        visible: isAdmin ? true : false,
                        btnWidth: MediaQuery.of(context).size.width * 0.3,
                        btnBorderRadius: 10,
                        btnColor: AppColors.navyBlue,
                        onChanged: onPressedUpdate ?? () {},
                        title: btn2Name ?? '',
                        btnTextColor: AppColors.secondaryBackground,
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonWidget(
                        visible: true,
                        btnBorderRadius: 10,
                        btnColor: AppColors.bluue,
                        onChanged: onPressedView,
                        title: btn1Name,
                        btnTextColor: AppColors.secondaryBackground,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleValueModel {
  final String? title;
  final String? value;

  TitleValueModel({this.title, this.value});
}
