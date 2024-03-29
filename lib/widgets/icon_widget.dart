
import 'dart:ffi';

import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';

class IconButtonWidget extends StatelessWidget {
  final Icon icon;
  final Color? iconColor;
  final VoidCallback? onChanged;
  final double? iconSize;
  const IconButtonWidget({super.key, required this.icon, this.iconColor,this.onChanged,this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          // border: Border.all(color: AppColors.secondaryBackground)
          ),
      child: Center(
          child: IconButton(onPressed:onChanged, icon: icon, color: iconColor,iconSize: iconSize,)),
    );
  }
}
