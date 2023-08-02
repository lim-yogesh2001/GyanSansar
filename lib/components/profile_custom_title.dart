import 'package:flutter/material.dart';

class ProfileCustomTitle extends StatelessWidget {
  final String title;
  final String btnText;
  final VoidCallback onPressed;

  const ProfileCustomTitle(
      {required this.title,
      required this.btnText,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.teal,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          height: 35.0,
          child: TextButton(
            onPressed: onPressed,
            child: Text(btnText),
          ),
        )
      ],
    );
  }
}
