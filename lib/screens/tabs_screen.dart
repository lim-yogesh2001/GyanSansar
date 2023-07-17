import 'package:flutter/material.dart';
import './following.dart';
import './home.dart';
import './answer.dart';
import './notifications.dart';
import '../components/custom_drawer.dart';

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
      activeScreen = const NotificationScreen();
    }

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
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
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: activeScreen,
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(136, 202, 199, 199),
                  spreadRadius: 2,
                  blurRadius: 0.2)
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
                    icon: Icon(Icons.check_box), label: 'Answer'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: 'Notifications'),
              ]),
        ),
      ),
    );
  }
}
