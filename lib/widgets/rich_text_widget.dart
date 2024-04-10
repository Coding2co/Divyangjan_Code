import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String? title;
  final String? content;
  final Color? titleColor;
  final Color? contentColor;
  final double? titleFontSize;
  final double? contentFontSize;
  final FontWeight? titleFontWeight;
  final FontWeight? contentFontWeight;
  final double titleWidth;

  const RichTextWidget({
    Key? key,
    this.title,
    this.content,
    this.titleColor,
    this.contentColor,
    this.contentFontSize,
    this.contentFontWeight,
    this.titleFontSize,
    this.titleFontWeight,
    this.titleWidth = 140.0, // Default width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: titleWidth,
            child: TextWidget(
                title: '$title',
                textColor: titleColor ?? AppColors.navyBlue,
                textFontSize: titleFontSize ?? 15,
                textFontWeight: FontWeight.w600)),
        Flexible(
            child: TextWidget(
                title: ': $content',
                textColor: contentColor ?? AppColors.secondaryText,
                textFontSize: contentFontSize ?? 14.0,
                textFontWeight: contentFontWeight ?? FontWeight.w500)),
      ],
    );
  }
}
