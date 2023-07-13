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
              'https://scontent.fktm17-1.fna.fbcdn.net/v/t1.6435-9/62235733_493534181418902_5313395108073177088_n.jpg?_nc_cat=106&cb=99be929b-3346023f&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=skhl5KWA8YAAX9l_7wR&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDZwimjdxxQ5V6Wqf4KGTk_qA-AB3UocOSbx420XmAj-w&oe=64D789A3',
        },
        {
          "id": 4,
          "picture":
              'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/292911681_836368457333450_2642078592255151279_n.jpg?_nc_cat=106&cb=99be929b-3346023f&ccb=1-7&_nc_sid=19026a&_nc_ohc=Rv7L6AwoefQAX-DpYUQ&_nc_ht=scontent.fktm17-1.fna&oh=00_AfBX16EiAFxSefCyCCvriljF3YWQAnr7gfVr9xhMBk9SAg&oe=64B4321F',
        },
        {
          "id": 4,
          "picture":
              'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/254319763_683565432613754_1930896494770091144_n.jpg?_nc_cat=106&cb=99be929b-3346023f&ccb=1-7&_nc_sid=19026a&_nc_ohc=LzkbPTXuRGQAX_gQqpV&_nc_ht=scontent.fktm17-1.fna&oh=00_AfBiYIRnxklHladwOm8-FzI_AIYkaUcrXvCkIhWqWl0XhQ&oe=64B45207',
        },
        {
          "id": 4,
          "picture":
              'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80',
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostCard(postImages: postImage[0]["image"]),
        PostCard(postImages: postImage[3]["image"]),
        PostCard(postImages: postImage[2]["image"]),
      ],
    );
  }
}
