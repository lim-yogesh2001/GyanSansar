import 'package:flutter/material.dart';
import '../comment.dart';
import '../../models/comment.dart';

class PostComment extends StatelessWidget {
  final List<Comment> comments;
  const PostComment({
    required this.comments,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return comments.isEmpty
        ? const SizedBox.shrink()
        : CommentComponent(
            imageUrl: comments[0].user.info?.profile,
            username: comments[0].user.givenName,
            description: comments[0].description,
            created: comments[0].createdAt,
          );
  }
}
