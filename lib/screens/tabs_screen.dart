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
      drawer: CustomDrawer(),
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
        child: SafeArea(
          child: Column(children: [
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //     child: const AppBarComponent(
            //   isLoggedIn: true,
            // )),
            Container(
                height: MediaQuery.of(context).size.height, child: activeScreen)
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
