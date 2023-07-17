import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onPressed;
  final Color color;
  final IconData icon;
  final Color iconColor;

  const CustomFlatButton({
    required this.buttonTitle,
    required this.onPressed,
    required this.color,
    required this.icon,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TextButton.icon(
        style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.grey.shade300),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            iconSize: MaterialStateProperty.all(16.0),
            iconColor: MaterialStateProperty.all(iconColor),
            textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14.0),
            )),
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          buttonTitle,
          style: TextStyle(color: color),
        ),
      ),
    );
  }
}
