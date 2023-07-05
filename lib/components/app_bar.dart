import 'package:flutter/material.dart';
import './avatar_menu.dart';

class AppBarComponent extends StatefulWidget {
  final bool isLoggedIn;

  const AppBarComponent({
    super.key,
    required this.isLoggedIn,
  });

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  bool isMenuOpen = false;

  final List<Map> _menuItems = [
    {'title': 'Courses', 'event': () {}},
    {'title': 'Assignments', 'event': () {}},
    {'title': 'Notes', 'event': () {}},
    {'title': 'Asked Queries', 'event': () {}},
    {'title': 'Favorites', 'event': () {}},
    {'title': 'Settings', 'event': () {}},
    {'title': 'Logout', 'event': () {}}
  ];

  void toggleMenu() {
    setState(() {
      if (isMenuOpen == true) {
        isMenuOpen = false;
      } else {
        isMenuOpen = true;
      }
    });
    print(isMenuOpen);
  }

  @override
  Widget build(BuildContext context) {
    Widget optWidget = ElevatedButton(
      onPressed: () {},
      child: const Text(
        'Login',
        style: TextStyle(color: Colors.black87),
      ),
    );

    if (widget.isLoggedIn) {
      optWidget = AvatarMenu(
        visibility: isMenuOpen,
        onClick: toggleMenu,
        menuItems: _menuItems,
      );
    }

    return LayoutBuilder(builder: (ctx, constraint) {
      final width = constraint.maxWidth;

      return Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 10.0, left: 5.0),
        child: Row(
          children: [
            SizedBox(
              width: widget.isLoggedIn ? width * .84 : width * .7,
              height: 45,
              child: TextField(
                style: const TextStyle(
                  fontSize: 12.0,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 232, 229, 229),
                    labelText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Container(
                width: widget.isLoggedIn ? width * .12 : width * .25,
                child: optWidget)
          ],
        ),
      );
    });
  }
}
