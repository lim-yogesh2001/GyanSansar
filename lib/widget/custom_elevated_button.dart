import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String btnTitle;
  final Color titlecolor;
  final VoidCallback onPressed;
  final Color btnbackground;
  const CustomElevatedButton(
      {required this.btnTitle, required this.titlecolor, required this.onPressed, super.key, required this.btnbackground});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(btnbackground),
        ),
          onPressed: onPressed,
          child: Text(
            btnTitle,
            style: TextStyle(color: titlecolor),
          )),
    );
  }
}
