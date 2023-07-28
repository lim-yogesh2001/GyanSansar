
import 'package:flutter/material.dart';


class CustomSettingListTile extends StatefulWidget {
  final String title;
  final String subTitle;

  const CustomSettingListTile({
    required this.title,
    required this.subTitle,
    super.key,
  });

  @override
  State<CustomSettingListTile> createState() => _CustomSettingListTileState();
}

class _CustomSettingListTileState extends State<CustomSettingListTile> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.teal,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: const TextStyle(
          color: Colors.teal,
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Switch(
        activeColor: Colors.teal,
        value: value,
        onChanged: (bool val) {
          setState(() {
            value = val;
          });
        },
      ),
    );
  }
}
