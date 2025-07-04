import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/controllers/password_controller.dart';
import 'package:divyangjan_frontend/controllers/sigin_validator_controller.dart';
import 'package:divyangjan_frontend/screens/navigation_screen.dart';
import 'package:divyangjan_frontend/screens/signup_screen.dart';
import 'package:divyangjan_frontend/widgets/button_widget.dart';
import 'package:divyangjan_frontend/widgets/password_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:divyangjan_frontend/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController passwdCtrl = TextEditingController();
  final TextEditingController txtCtrl = TextEditingController();

  final PasswordController passwordController = PasswordController();
  final SigninValidator validator = Get.put(SigninValidator());

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          color: AppColors.secondaryBackground,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                const TextWidget(
                  title: AppString.signinTitle,
                  textColor: AppColors.primaryText,
                  textFontSize: 36.0,
                  textFontWeight: FontWeight.w900,
                ),
                const SizedBox(
                  height: 2.0,
                ),
                const TextWidget(
                    title: AppString.usrsubTitle,
                    textColor: AppColors.secondaryText,
                    textFontSize: 14.0,
                    textFontWeight: FontWeight.w600),
                const SizedBox(
                  height: 15.0,
                ),
                TextFieldWidget(
                  labelText: 'Phone Number',
                  controller: txtCtrl,
                  boxWidth: 375.0,
                  boxHeight: 60.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                PassworddWidget(
                  labelText: AppString.passwd,
                  boxWidth: 375.0,
                  boxHeight: 60,
                  controller: passwdCtrl,
                  passwordController: passwordController,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                  btnWidth: 370,
                  btnHeight: 44,
                  btnBorderRadius: 12,
                  btnColor: AppColors.primaryText,
                  btnTextFontSize: 18,
                  btnTextFontWeight: FontWeight.w700,
                  title: AppString.signinBtnTitle,
                  onChanged: () {
                    String phoneNumber = txtCtrl.text.trim();
                    String password = passwdCtrl.text.trim();
                    
                    if(validator.validateCandidateData(phoneNumber, password) ){
                      Get.to(() => const NavigationScreen());
                    }
                   
                  },
                  btnTextColor: Colors.white,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 10.0),
                  child: Row(children: [
                    const Text(
                      AppString.noAccount,
                      style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(SignUpScreen());
                      },
                      child: const Text(
                        AppString.signupNow,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryText),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
