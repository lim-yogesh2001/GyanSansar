import 'package:flutter/material.dart';
import '../screens/settings_profile_view.dart';
import '../screens/settings_profile_gallery.dart';
import '../screens/settings_profile_question.dart';
import '../screens/settings_profile_favorites.dart';

class ProfileTabsAndViews extends StatefulWidget {
  final String initialTab;
  const ProfileTabsAndViews({
    required this.initialTab,
    super.key,
  });

  @override
  State<ProfileTabsAndViews> createState() => _ProfileTabsAndViewsState();
}

class _ProfileTabsAndViewsState extends State<ProfileTabsAndViews>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = [
    Tab(
      text: "Profile",
    ),
    Tab(
      text: "Question",
    ),
    Tab(
      text: "Favorites",
    ),
    Tab(
      text: "Gallery",
    )
  ];


  late TabController _tabController;

  int getInitialIndex(String tabName) {
    if (tabName == "profile"){
      return 0;
    } else if (tabName == "question"){
      return 1;
    } else if (tabName == "favorites"){
      return 2;
    } else if(tabName == "gallery"){
      return 3;
    }
    return 0;
  }


  @override
  void initState() {
    _tabController = TabController(initialIndex: getInitialIndex(widget.initialTab), length: myTabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabBar(
            controller: _tabController,
            tabs: myTabs,
          ),
          Container(
            height: 300,
            child: TabBarView(
              controller: _tabController,
              children: [
                SettingsProfileView(),
                SettingsProfileQuestions(),
                SettingsProfileFavorite(),
                SettingsProfileGallery()
              ],
            ),
          )
        ],
      ),
    );
  }
}
