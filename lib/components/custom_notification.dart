import 'package:flutter/material.dart';

class CustomNotificationButton extends StatefulWidget {
  final int totalNotifications;

  const CustomNotificationButton({
    required this.totalNotifications,
    super.key,
  });

  @override
  State<CustomNotificationButton> createState() => _CustomNotificationButtonState();
}

class _CustomNotificationButtonState extends State<CustomNotificationButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          iconSize: 30.0,
          icon: const Icon(Icons.notifications),
        ),
        Positioned(
            top: 3,
            right: 3,
            child: Container(
              height: 20.0,
              width: 18.0,
              padding: const EdgeInsets.all(2.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                widget.totalNotifications.toString(),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}
