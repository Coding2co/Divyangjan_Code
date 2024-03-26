import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/screens/signin_screen.dart';
import 'package:divyangjan_frontend/screens/verify_screen.dart';
import 'package:divyangjan_frontend/widgets/button_widget.dart';
import 'package:divyangjan_frontend/widgets/password_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:divyangjan_frontend/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {


  final TextEditingController phoneNumberCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController confirmPasswdCtrl = TextEditingController();

   SignUpScreen({super.key});
   
    

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
                  title: AppString.signupTitle,
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
                  controller: phoneNumberCtrl,
                  boxWidth: 375.0,
                  boxHeight: 90.0,
                  // txtErrorMsg: phoneNumberCtrl
                  //     .validatePhoneNumber(controller.phoneCtrl.text),
                  // onChanged: phoneNumberCtrl.setPhoneNumber,
                ),
               
                   PassworddWidget(
                    labelText: AppString.passwd, 
                    boxWidth: 375.0, 
                    boxHeight: 60, 
                    controller: passwordCtrl, 
                    obsecureStatus: true
                    ),
                
                
                const SizedBox(
                  height: 10.0,
                ),
          
                PassworddWidget(
                    labelText: AppString.passwd, 
                    boxWidth: 375.0, 
                    boxHeight: 60, 
                    controller: confirmPasswdCtrl, 
                    obsecureStatus: true
                    ),
                
              
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                  btnWidth: 370,
                  btnHeight: 44,
                  btnBorderRadius: 12,
                  btnColor: AppColors.primaryText,
                  btnTextFontSize: 16,
                  btnTextFontWeight: FontWeight.w600,
                  title: AppString.signupBtnTitle,
                  onChanged: () {
                    Get.to(() => const PhoneVerify());
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
                      AppString.alreadyAccount,
                      style: TextStyle(
                          color: AppColors.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => SignInScreen());
                      },
                      child: const Text(
                        AppString.signinNow,
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
























// TextFieldWidget(
//                       labelText: 'Confirm Password',
//                       controller: controller.passwdCtrl,
//                       boxWidth: 375.0,
//                       boxHeight: 60.0,
//                       isPassword: true,
//                       obsecureStatus: !passwordCtrl1.isShow.value,
//                       onChanged: passwordCtrl1.showPassword,
//                     )