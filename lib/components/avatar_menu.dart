import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class AvatarMenu extends StatelessWidget {
  final List<Map> menuItems;
  final bool visibility;
  final VoidCallback onClick;
  const AvatarMenu({
    super.key,
    required this.visibility,
    required this.onClick,
    required this.menuItems,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> menuList = menuItems
        .map((value) => ListTile(
              onTap: value['event'],
              title: Text(
                value['title'],
                style: const TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
            ))
        .toList();

    return PortalTarget(
      visible: visibility,
      anchor: const Aligned(
          follower: Alignment.topRight, target: Alignment.bottomRight),
      portalFollower: Material(
        elevation: 8,
        child: IntrinsicWidth(
          stepHeight: 200.0,
          child: Column(
            children: menuList,
          ),
        ),
      ),
      child: GestureDetector(
        onTap: onClick,
        child: const CircleAvatar(
          foregroundColor: Color.fromARGB(255, 238, 236, 236),
          backgroundImage: AssetImage('assets/gyansansar_logo.png'),
        ),
      ),
    );
  }
}
