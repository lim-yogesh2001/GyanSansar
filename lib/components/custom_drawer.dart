import 'package:flutter/material.dart';
import 'package:gyansansar/screens/asked_queries.dart';
import 'package:gyansansar/screens/course_list.dart';
import 'package:gyansansar/screens/notes_list.dart';
import 'package:gyansansar/screens/profile.dart';
import 'package:gyansansar/screens/question_bank_screen.dart';
import 'package:gyansansar/screens/syllabus_screen.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/gyansansar_logo.png'),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  '  Sujit Shrestha',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  '  sjit.stha@gmail.com',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff077c77))),
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const AskedQueriesScreen(),
                        ));
                      },
                      child: const Text(
                        "Add Question",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ),
          ),
          _CustomDrawerTile(
              title: "Course",
              icon: Icons.book,
              function: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const CourseListScreen()));
              }),
          _CustomDrawerTile(
              title: "Syllabus",
              icon: Icons.schedule,
              function: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const SyllabusScreen(),
                  ),
                );
              }),
          _CustomDrawerTile(
              title: "Question Bank",
              icon: Icons.question_answer,
              function: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const QuestionBankScreen()));
              }),
          _CustomDrawerTile(
              title: "Notes",
              icon: Icons.note_add_sharp,
              function: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotesListScreen(),
                ));
              }),
          _CustomDrawerTile(
              title: "Asked Queries",
              icon: Icons.question_answer,
              function: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) =>
                        const ProfileScreen(initialTab: 'question')));
              }),
          _CustomDrawerTile(
              title: "Favorites",
              icon: Icons.favorite,
              function: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) =>
                        const ProfileScreen(initialTab: 'favorites')));
              }),
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
