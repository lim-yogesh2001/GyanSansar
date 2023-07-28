import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class PostDescription extends StatelessWidget {
  final String? description;
  const PostDescription({ required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      child: ReadMoreText(
        description!,
        trimLines: 3,
        colorClickableText: Colors.teal,
        trimMode: TrimMode.Line,
        trimCollapsedText: "show more",
        trimExpandedText: "...show less",
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 14.0,
          fontWeight: FontWeight.normal
        ),
      ),
    );
  }
}
