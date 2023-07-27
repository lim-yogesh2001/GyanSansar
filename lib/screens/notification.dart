import 'package:flutter/material.dart';
import '../components/notification_comps.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        "id": 1,
        "users": [
          {
            'id': 1,
            'username': "Darshan",
            'image':
                "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"
          },
        ],
        "category": 'Like',
        "time": "Sat at 2:00",
        "status": "unchecked",
      },
      {
        "id": 2,
        "users": [
          {
            'id': 2,
            'username': "NimbuZ Pani",
            'image':
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"
          },
          {
            'id': 3,
            'username': "Sumnima Rai",
            'image':
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"
          },
        ],
        "category": 'Favorite',
        "time": "Sun at 12:00",
        "status": "unchecked",
      },
      {
        "id": 2,
        "users": [
          {
            'id': 2,
            'username': "NimbuZ Pani",
            'image':
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"
          },
          {
            'id': 3,
            'username': "NimbuZ Pani",
            'image':
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"
          },
          {
            'id': 3,
            'username': "NimbuZ Pani",
            'image':
                "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"
          },
        ],
        "category": 'Comment',
        "time": "Mon at 5:00",
        'status': 'checked',
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          NotificationComps(notification: notifications[0],),
          NotificationComps(notification: notifications[1],),
          NotificationComps(notification: notifications[2],),
        ],
      )),
    );
  }
}
