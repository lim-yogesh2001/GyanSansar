import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final String defaultValue;
  final List<String> list;
  final Function(dynamic) onChange;
  const CustomDropDownButton(
      {required this.defaultValue,
      required this.list,
      required this.onChange,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
        margin: const EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(30.0)),
        child: DropdownButton(
          value: defaultValue,
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Colors.black87),
          borderRadius: BorderRadius.circular(25.0),
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(value: value, child: Text(value.length >= 10 ? "${value.substring(0,20)}..." : value));
          }).toList(),
          onChanged: onChange,
        ));
  }
}
