
// ignore_for_file: non_constant_identifier_names


// import 'package:divyangjan/widgets/dropDown_widget.dart';

import 'package:divyangjan_frontend/Resources/Colors/appColors.dart';
import 'package:divyangjan_frontend/Resources/Strings/appString.dart';
import 'package:divyangjan_frontend/controllers/dropdown_Controller.dart';
import 'package:divyangjan_frontend/widgets/text_widget.dart';
import 'package:divyangjan_frontend/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController ageCtrl = TextEditingController();
  final TextEditingController despCtrl = TextEditingController();
  final TextEditingController dropdwnCtrl = TextEditingController();

  final List<String>genderOptions = ["Male","Female","Others"];
  final List<String>occupationOptions = ["Public Sector","Private Sector","Self-Empolyed","Unempolyed,Farmer"];
  final List<String>statesOptions = ["Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Telangana","Uttar Pradesh","Uttarakhand","West Bengal"];

  final DropDownController ddCtrl = Get.put(DropDownController());

  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar:PreferredSize(preferredSize:const Size.fromHeight(75.0),
      child:AppBar(
        elevation: 0,
        title:const Padding(
          padding: EdgeInsets.only(top:28.0),
          child: TextWidget(title: AppString.regTitle, textColor: AppColors.primaryText, textFontSize: 24, textFontWeight:FontWeight.w800,textSpace: 0.3,),
        ),
        backgroundColor: AppColors.primaryBackground,
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
               const TextWidget(title: AppString.regSec1, textColor:AppColors.blackText, textFontSize: 24, textFontWeight: FontWeight.w500),
               TextFieldWidget(labelText:AppString.regName , controller:nameCtrl),
               TextFieldWidget(labelText:AppString.regAge , controller: ageCtrl),
               Obx( () => DropdownButton(
                  hint: const Text(
                  AppString.regGender
                  ),
                  onChanged: (newValue) {
                    ddCtrl.setSelectedValue(newValue!);
                  },
                  value: ddCtrl.selectedValue.value==""?null:ddCtrl.selectedValue.value,
                  items: genderOptions.map((selectedType) {
                    return DropdownMenuItem(
                      value: selectedType,
                      child:Text(
                        selectedType,
                      ),
                    );
                  }).toList(),
                )
),
              
          ],
        ),
        ),
    );
  }
}