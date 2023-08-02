import 'package:flutter/material.dart';

class CircleFollowAvatar extends StatelessWidget {
  const CircleFollowAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1.0),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            // backgroundImage:
            // AssetImage("assets/gyansansar_title.jpg"),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text("Followers")
        ],
      ),
    );
  }
}
