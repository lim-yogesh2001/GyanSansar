import 'package:flutter/material.dart';

import '../components/post_card/post_card.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List favoriteList = [
      {
        "image": [
          {
            "id": 1,
            "picture":
                'https://images.unsplash.com/photo-1513001900722-370f803f498d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'
          },
        ],
        "comments": [
          {
            "id": 1,
            "comment": "Really Good",
            "username": "Skyler Grey",
            "image":
                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"
          },
          {
            "id": 2,
            "comment": "Really Good",
            "username": "Tommy Nelson",
            "image":
                "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"
          }
        ],
        "description":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      },
    ];

    return Column(
      children: [
        PostCard(
          postImages: favoriteList[0]["image"],
          postComments: favoriteList[0]["comments"],
          description: favoriteList[0]["description"],
        ),
      ],
    );
  }
}
