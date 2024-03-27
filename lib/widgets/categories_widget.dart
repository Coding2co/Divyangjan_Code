import 'package:divyangjan_frontend/Resources/Images/app_images.dart';
import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // EdgeInsetsGeometry margin;
    return Container(
      width: double.infinity,
      height: 230,
      color: AppColors.primaryBackground,
      child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
             EdgeInsetsGeometry margin = const EdgeInsets.only(top: 10, bottom: 5, left: 15, right: 5);
            }
            //  else if (index == 9) {

            //   margin = const EdgeInsets.only(top: 5, bottom: 10, left: 15, right: 5);
            // }
            else {
             EdgeInsetsGeometry margin = const EdgeInsets.symmetric(vertical: 5, horizontal: 5);
            }
            return SizedBox(
              width: 260,
              child: Card(
                shadowColor: const Color.fromARGB(255, 11, 22, 28),
                margin: const EdgeInsets.only(left: 15.0, right: 5.0),
                elevation: 20,
                child: Image.asset(
                  "${AppImages.catImg(index)}",
                  fit: BoxFit.cover,
                  width: 240.0,
                  height: 40.0,
                ),
              ),
            );
          }),
    );
  }
}
