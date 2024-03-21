
import 'package:divyangjan_frontend/Resources/Colors/appColors.dart';
import 'package:divyangjan_frontend/Resources/Strings/appString.dart';
import 'package:divyangjan_frontend/screens/signin_screen.dart';
import 'package:divyangjan_frontend/screens/verify_screen.dart';
import 'package:divyangjan_frontend/widgets/button_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:divyangjan_frontend/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController txtCtrl = TextEditingController();
  final TextEditingController passwdCtrl = TextEditingController();
  final TextEditingController passwdcheckCtrl = TextEditingController();
  final VoidCallbackAction onPressed = VoidCallbackAction();
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
                    const SizedBox(height: 2.0,),
                    const TextWidget(
                        title:AppString.usrsubTitle,
                        textColor: AppColors.secondaryText,
                        textFontSize: 14.0,
                        textFontWeight: FontWeight.w600),
                        const SizedBox(height: 15.0,),
                    TextFieldWidget(labelText: 'Phone Number', controller: txtCtrl),
                    const SizedBox(height: 10.0,),
                    TextFieldWidget(
                      labelText: 'Password',
                      controller: passwdCtrl,
                    ),
                    const SizedBox(height: 10.0,),
                    TextFieldWidget(
                      labelText: 'Confirm Password',
                      controller: passwdcheckCtrl,
                    ),
                    const SizedBox(height: 20,),
                    ButtonWidget(
                      btnWidth: 370,
                      btnHeight: 44,
                      btnBorderRadius: 12,
                      btnColor: AppColors.primaryText,
                      btnTextFontSize: 16,
                      btnTextFontWeight:FontWeight.w600,
                      title:AppString.signupBtnTitle,
                      onChanged: () {
                        Get.to(const PhoneVerify());
                      },
                      btnTextColor: Colors.white,
                      
                    ),
                    const SizedBox(height: 16.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 10.0),
                      child: Row(children: [
                        const Text(AppString.alreadyAccount,
                        style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                        InkWell(
                          onTap: () {
                            Get.to(SignInScreen());
                          },
                          child: const Text(AppString.signinNow,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight:FontWeight.w600,
                            color: AppColors.primaryText
                          ),),
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
