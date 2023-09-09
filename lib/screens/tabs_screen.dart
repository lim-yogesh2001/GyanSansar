import 'package:flutter/material.dart';
import 'package:gyansansar/screens/answer.dart';
import 'package:gyansansar/screens/assignments.dart';
import './following.dart';
import './home.dart';
import 'settings.dart';
import '../components/custom_drawer.dart';
import '../components/custom_notification_btn.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedIndex = 0;

  void selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen();

    if (_selectedIndex == 1) {
      activeScreen = const FollowingScreen();
    } else if (_selectedIndex == 2) {
      activeScreen = const AnswerScreen();
    } else if (_selectedIndex == 3) {
      activeScreen = const AssignmentScreen();
    } else if (_selectedIndex == 4) {
      activeScreen = const SettingScreen();
    }

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: const _DrawerIcon(),
        actions: const [
          CustomNotificationButton(totalNotifications: 3,)
        ],
        title: SizedBox(
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
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      body: activeScreen,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(136, 202, 199, 199),
                spreadRadius: 2,
                blurRadius: 0.2,
              )
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.orange,
              unselectedItemColor: Colors.grey.shade400,
              backgroundColor: Colors.teal,
              elevation: 0.0,
              onTap: selectIndex,
              currentIndex: _selectedIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.document_scanner), label: 'Following'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.question_answer_rounded), label: 'Answer'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.work), label: 'Assignments'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ]),
        ),
      ),
    );
  }
}

class _DrawerIcon extends StatelessWidget {
  const _DrawerIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Container(
            margin: const EdgeInsets.all(2.0),
            child: Image.asset(
              'assets/gyansansar_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
