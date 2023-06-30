import 'package:flutter/material.dart';
import './following.dart';
import './home.dart';
import './answer.dart';
import './notifications.dart';
import '../components/app_bar.dart';

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
    Widget activeScreen = const HomeScreen();

    if (_selectedIndex == 1) {
      activeScreen = const FollowingScreen();
    } else if (_selectedIndex == 2) {
      activeScreen = const AnswerScreen();
    } else if (_selectedIndex == 3) {
      activeScreen = const NotificationScreen();
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
                child: const AppBarComponent(
              isLoggedIn: true,
            )),
            activeScreen
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.grey.shade400,
          backgroundColor: Colors.teal,
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
    );
  }
}
