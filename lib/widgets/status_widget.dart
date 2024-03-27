import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';

class StatusWidget extends StatelessWidget {
  final String statusTitle;
  final Color cardBgcolor;
  final double cardWidth;
  final double cardHeight;

  const StatusWidget(
      {super.key,
      required this.statusTitle,
      required this.cardBgcolor,
      required this.cardWidth,
      required this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: cardWidth, //70
        height: cardHeight, //30
        // padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: cardBgcolor,
            border: Border.all(width: 1.0, color: Colors.transparent)),
        child: Center(
          child: TextWidget(
            title: statusTitle,
            textColor: AppColors.secondaryBackground,
            textFontSize: 16,
            textFontWeight: FontWeight.w800,
            textSpace: 1.0,
          ),
        ));
  }
}
