
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: Colors.black54,
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
          ListTile(
            onTap: () {},
            title: const Text("Course"),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Assignments"),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Notes"),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Asked Queries"),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Favorites"),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Settings"),
          ),
          ListTile(
            onTap: (){},
            title: const Text("Logout"),
          )
        ],
      ),
    );
  }
}
