import 'package:divyangjan_frontend/widgets/icon_widget.dart';
import 'package:flutter/material.dart';
import '../../Resources/Colors/app_colors.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final Function() onClicked;
  final Icon icon;
  const FloatingActionButtonWidget(
      {super.key, required this.onClicked, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.blackText,
      onPressed:onClicked,
      shape: const CircleBorder(side: BorderSide.none, eccentricity: 0.0),
      child: IconButtonWidget(
        icon: icon,
        iconSize: 28,
      ),
    );
  }
}
