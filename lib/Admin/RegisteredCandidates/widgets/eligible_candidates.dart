// import 'package:divyangjan_frontend/Admin/RegisteredCandidates/controllers/registered_candidates_controller.dart';
// import 'package:divyangjan_frontend/Admin/Widgets/searchbar_widget.dart';
// import 'package:divyangjan_frontend/Admin/Widgets/user_details_card.dart';
// import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
// import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
// import 'package:divyangjan_frontend/widgets/dropDown_widget.dart';
// import 'package:divyangjan_frontend/widgets/text_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controllers/dropdown_Controller.dart';


// class RegistratedCandidatesWidget extends StatelessWidget {
//   RegistratedCandidatesWidget({super.key});

  

//   final DropdownController dropdownController = Get.put(DropdownController());

//   final TextEditingController controller = TextEditingController();

//   final RegisteredCandidatesController candidatesController = Get.put(RegisteredCandidatesController());

//   final List<String> statesOptions = [
//     "Andhra Pradesh",
//     "Arunachal Pradesh",
//     "Assam",
//     "Bihar",
//     "Chhattisgarh",
//     "Goa",
//     "Gujarat",
//     "Haryana",
//     "Himachal Pradesh",
//     "Jharkhand",
//     "Karnataka",
//     "Kerala",
//     "Madhya Pradesh",
//     "Maharashtra",
//     "Manipur",
//     "Meghalaya",
//     "Mizoram",
//     "Nagaland",
//     "Odisha",
//     "Punjab",
//     "Rajasthan",
//     "Sikkim",
//     "Tamil Nadu",
//     "Telangana",
//     "Telangana",
//     "Uttar Pradesh",
//     "Uttarakhand",
//     "West Bengal"
//   ];


//   // @override
//   // void initState() {
//   //   super.initState();
//   //   candidatesController.getTitleName(candidatesController.args);
//   // }

//   @override
//   Widget build(BuildContext context) {   
//     return Scaffold(
//         backgroundColor: AppColors.primaryBackground,
//         appBar: AppBar(
//           elevation: 2,
//           automaticallyImplyLeading: false,
//           title:Obx(() => TextWidget(
//               title:candidatesController.title.value,
//               textColor: AppColors.navyBlue,
//               textFontSize: 22,
//               textFontWeight: FontWeight.w500))
//            ,
//           backgroundColor: AppColors.primaryBackground,
//           actions: [
//             IconButton(
//               icon: const Icon(
//                 Icons.close_rounded,
//                 size: 33,
//               ),
//               onPressed: () {
//                 Get.toNamed('/eligibilityScreenRoute');
//               },
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               DropDownWidget(
//                   controller: dropdownController,
//                   options: statesOptions,
//                   hintText: AppString.regState,
//                   dropdownHeight: 55,
//                   dropdownWidth: MediaQuery.of(context).size.width),
//               const SizedBox(
//                 height: 10.0,
//               ),
//               RichText(
//                 text: const TextSpan(
//                   children: [
//                     TextSpan(
//                         text: AppString.totCandi,
//                         style: TextStyle(
//                             fontSize: 18.0,
//                             color: AppColors.blackText,
//                             fontWeight: FontWeight.w500)),
//                     TextSpan(text: ''),
//                     TextSpan(
//                       text: '%500',
//                       style: TextStyle(
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.w500,
//                           color: AppColors.blackText),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 10.0,
//               ),
//               CustomSearchBar(searchController: controller),
//               const SizedBox(
//                 height: 10.0,
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   scrollDirection: Axis.vertical,
//                   itemCount: 15,
//                   itemBuilder: (context, index) {
//                     return UserDetailsCard(
//                         personName: 'AndhraPradesh MedTech Zone',
//                         phoneNumber: '9292087267',
//                         onChanged: () {});
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
