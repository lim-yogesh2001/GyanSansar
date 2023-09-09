import 'package:flutter/material.dart';
import 'package:gyansansar/screens/profile.dart';
import '../widget/settings_list_tile.dart';
import './change_email.dart';
import './change_password.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _settingsTitle("Profile"),
        Container(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const ProfileScreen(
                        initialTab: 'profile',
                      ),
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
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (ctx) => const ChangePasswordScreen()),
                  );
                },
                title: const Text(
                  "Change Password",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 14.0,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const ChangeEmailScreen(),
                  ));
                },
                title: const Text(
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
