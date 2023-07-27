import 'package:flutter/material.dart';
import '../comment.dart';

class PostComment extends StatelessWidget {
  final List comments;
  const PostComment({
    required this.comments,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return comments.isEmpty
        ? const SizedBox.shrink()
        : Comment(
            imageUrl: comments[0]['image'],
            username: comments[0]['username'],
            description: comments[0]['comment'],
            created: "1hr",
          );
  }
}
