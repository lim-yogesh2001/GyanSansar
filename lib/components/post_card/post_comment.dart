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
            comment: comments[0],
          );
  }
}
