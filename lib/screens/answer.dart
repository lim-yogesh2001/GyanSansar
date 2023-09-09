import 'package:flutter/material.dart';

import '../components/post_card/post_card.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List answerList = [
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
          {
            "id": 4,
            "picture":
                'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80',
          },
        ],
        "comments": [],
        "description":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
      },
    ];

    return Column(
      children: [
        // PostCard(
        //   postImages: answerList[0]["image"],
        //   postComments: answerList[0]["comments"],
        //   description: answerList[0]["description"],
        //   likeStatus: answerList,
        // ),
      ],
    );
  }
}
