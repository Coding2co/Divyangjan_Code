// ignore_for_file: file_names

import 'package:flutter/material.dart';


class DropdownComponent extends StatelessWidget {
  final List<String> options;
  final String selectedValue;
  final Function(String?) onChanged;

 const DropdownComponent({super.key, 
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: onChanged,
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
