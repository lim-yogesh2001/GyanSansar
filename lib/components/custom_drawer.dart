import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
            padding: const EdgeInsets.all(12.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/gyansansar_logo.png'),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '  Yogesh Limbu',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '  yogeshlim2001@gmail.com',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          _CustomDrawerTile(title: "Course", icon: Icons.book, function: () {}),
          _CustomDrawerTile(
              title: "Answer", icon: Icons.question_answer, function: () {}),
          _CustomDrawerTile(
              title: "Notes", icon: Icons.note_add_sharp, function: () {}),
          _CustomDrawerTile(
              title: "Asked Queries",
              icon: Icons.question_answer,
              function: () {}),
          _CustomDrawerTile(
              title: "Favorites", icon: Icons.favorite, function: () {}),
          _CustomDrawerTile(
              title: "Notifications", icon: Icons.notifications, function: () {}),
          _CustomDrawerTile(
              title: "Logout", icon: Icons.logout, function: () {})
        ],
      ),
    );
  }
}

class _CustomDrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback function;

  const _CustomDrawerTile({
    required this.title,
    required this.icon,
    required this.function,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      autofocus: true,
      leading: Icon(icon),
      titleAlignment: ListTileTitleAlignment.center,
      onTap: function,
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16.0,
            color: Colors.black87),
      ),
    );
  }
}
