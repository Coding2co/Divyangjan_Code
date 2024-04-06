import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  const CustomSearchBar({super.key , required this.searchController,});

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(labelText: AppString.searchLabel, boxWidth: double.infinity, boxHeight: 55, controller: searchController,icon: const Icon(Icons.search),type:TextInputType.name,);
  }
}




