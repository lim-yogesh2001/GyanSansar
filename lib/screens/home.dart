import 'package:flutter/material.dart';
import '../components/post_card/post_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List postImage = [
    {
      "image": [
        {
          "id": 1,
          "picture":
              'https://images.unsplash.com/photo-1513001900722-370f803f498d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80'
        },
        {
          "id": 2,
          "picture":
              'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80'
        }
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
      ]
    },
    {
      "image": [
        {
          "id": 2,
          "picture":
              'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80',
        }
      ]
    },
    {
      "image": [
        {
          "id": 3,
          "picture":
              'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80',
        }
      ]
    },
    {
      "image": [
        {
          "id": 4,
          "picture":
              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80',
        },
        {
          "id": 4,
          "picture":
              'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=386&q=80',
        },
        {
          "id": 4,
          "picture":
              'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80',
        },
      ],
      "comments": [
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostCard(
          postImages: postImage[0]["image"],
          postComments: postImage[0]["comments"],
        ),
        PostCard(
          postImages: postImage[3]["image"],
          postComments: postImage[3]["comments"],
        ),
      ],
    );
  }
}
