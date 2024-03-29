import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/controllers/dropdown_Controller.dart';
import 'package:divyangjan_frontend/controllers/imagepicker_controller.dart';
import 'package:divyangjan_frontend/screens/signin_screen.dart';
import 'package:divyangjan_frontend/widgets/button_widget.dart';
import 'package:divyangjan_frontend/widgets/dropDown_widget.dart';
import 'package:divyangjan_frontend/widgets/imagepicker_widget.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:divyangjan_frontend/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/radiobutton_widget.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController ageCtrl = TextEditingController();
  final TextEditingController despCtrl = TextEditingController();
  final TextEditingController dropdwnCtrl = TextEditingController();
  final TextEditingController docCtrl = TextEditingController();

  final List<String> genderOptions = ["Male", "Female", "Others"];
  final List<String> occupationOptions = [
    "Public Sector",
    "Private Sector",
    "Self-Empolyed",
    "Unempolyed",
    "Farmer",
  ];
  final List<String> statesOptions = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Telangana",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal"
  ];


  final DropdownController genderController = DropdownController();
  final DropdownController occupationController = DropdownController();
  final DropdownController stateController = DropdownController();

  final ImagePickerController imagePickerController1 = ImagePickerController();
  final ImagePickerController imagePickerController2 = ImagePickerController();
  final ImagePickerController imagePickerController3 = ImagePickerController();

  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 28.0),
            child: TextWidget(
              title: AppString.regTitle,
              textColor: AppColors.primaryText,
              textFontSize: 24,
              textFontWeight: FontWeight.w800,
              textSpace: 0.3,
            ),
          ),
          backgroundColor: AppColors.primaryBackground,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const TextWidget(
                  title: AppString.regSec1,
                  textColor: AppColors.blackText,
                  textFontSize: 24,
                  textFontWeight: FontWeight.w500),
              const SizedBox(
                height: 12.0,
              ),
              TextFieldWidget(
                labelText: AppString.regName,
                controller: nameCtrl,
                boxWidth: MediaQuery.of(context).size.width,
                boxHeight: 60,
                borderColor: AppColors.cardShadow,
                txtFontSize: 16,
                textFontWeight: FontWeight.w400,
                onChanged: (){
                  Get.back();
                },
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldWidget(
                    labelText: AppString.regAge,
                    controller: ageCtrl,
                    boxHeight: 60,
                    boxWidth: MediaQuery.of(context).size.width/3,
                    borderColor: AppColors.cardShadow,
                    txtFontSize: 16.0,
                    textFontWeight: FontWeight.w400,
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 5.0),
                    child: DropDownWidget(
                        controller: genderController,
                        options: genderOptions,
                        hintText: AppString.regGender,
                        dropdownHeight: 60,
                        dropdownWidth: MediaQuery.of(context).size.width/2,
                   
                        ),
                  )
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropDownWidget(
                  controller: occupationController,
                  options: occupationOptions,
                  hintText: 'Select Occupation',
                  dropdownHeight: 60,
                  dropdownWidth: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropDownWidget(
                  controller: stateController,
                  options: statesOptions,
                  hintText: 'Select State',
                  dropdownHeight: 60,
                  dropdownWidth: double.infinity,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
                
                //Section : Disability
    
    
                 const SizedBox(height: 14.0,),
              const TextWidget(
                  title: AppString.regSec2,
                  textColor: AppColors.blackText,
                  textFontSize: 24,
                  textFontWeight: FontWeight.w500,
                  ),
    
                  RadioButtonWidget(),
    
              const SizedBox(height: 6.0),
              TextFieldWidget(
                labelText: AppString.regDesp,
                boxWidth: double.infinity,
                boxHeight: 150,
                controller: despCtrl,
                txtMaxLength: 400,
                txtMinLine: 5,
                type: TextInputType.multiline,
                txtFontSize: 16,
              ),
              const SizedBox(
                height: 15.0,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
          
                 ImagePickerWidget(controller: imagePickerController1,),
    
                 ImagePickerWidget(controller: imagePickerController2,),
    
                 ImagePickerWidget(controller: imagePickerController3,),
                          
               ],
             ),
              const SizedBox(
                height: 15.0,
              ),
              
    
    
              // Submit Button
    
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0, bottom: 100.0),
                  child: ButtonWidget(
                      btnWidth: 140,
                      btnBorderRadius: 60,
                      btnColor: AppColors.primaryText,
                      btnBorderColor: AppColors.secondaryBackground,
                      btnTextColor: AppColors.secondaryBackground,
                      btnTextFontSize: 16.0,
                      onChanged: () {
                        Get.to(
                         ()=> SignInScreen());
                      },
                      title: AppString.regBtnTxt,
                      btnHeight: 44),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



















