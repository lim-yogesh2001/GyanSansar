import 'package:flutter/material.dart';
import '../components/post_card/post_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List postImage = [
    'https://images.unsplash.com/photo-1513001900722-370f803f498d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80',
    'https://images.unsplash.com/photo-1603284569248-821525309698?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostCard(postItems: postImage),
        PostCard(postItems: postImage)
      ],
    );
  }
}
