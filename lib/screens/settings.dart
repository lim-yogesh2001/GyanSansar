import 'package:flutter/material.dart';
import 'package:gyansansar/screens/profile.dart';
import '../components/settings_list_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _settingsTitle("Profile"),
        Container(
          padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 10.0),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                title: const Text(
                  "profile",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 14.0,
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  "Change Password",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 14.0,
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  "Change Email",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        _settingsTitle("Email Notifications"),
        Container(
          margin: const EdgeInsets.fromLTRB(15.0, 0, 0, 10.0),
          child: const Column(
            children: [
              CustomSettingListTile(
                title: 'Question',
                subTitle: "Send mail when you post any question.",
              ),
              CustomSettingListTile(
                title: 'Comment',
                subTitle: "Send mail when someone responses on your question.",
              ),
              CustomSettingListTile(
                title: 'Reply',
                subTitle: "Send mail when someone responses on your comment.",
              ),
              CustomSettingListTile(
                title: 'Assignment',
                subTitle: "Send mail when someone responses on your question.",
              ),
            ],
          ),
        ),
        _settingsTitle("Privacy"),
        Container(
          margin: const EdgeInsets.fromLTRB(15.0, 0, 0, 10.0),
          child: const Column(
            children: [
              CustomSettingListTile(
                title: "Basic Info",
                subTitle:
                    "Show your basic info like DOB and address for visitors.",
              ),
              CustomSettingListTile(
                title: "Contact Info",
                subTitle: "Show your phone number for visitors.",
              ),
              CustomSettingListTile(
                title: "Email Info",
                subTitle: "Show your email address to visitors.",
              )
            ],
          ),
        )
      ],
    );
  }

  Padding _settingsTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.w400),
      ),
    );
  }
}
