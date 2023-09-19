import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

import '../models/comment.dart';

class CommentComponent extends StatelessWidget {
  final Comment comment;

  const CommentComponent({
    super.key,
    required this.comment
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        margin: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 18.0,
              backgroundImage: NetworkImage(comment.user.info?.profile ??
                  "https://images.unsplash.com/photo-1582053628662-c65b0e0544e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comment.user.givenName,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      width: 270,
                      child: ReadMoreText(
                        comment.description,
                        trimLines: 5,
                        colorClickableText: Colors.black45,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "show more",
                        trimExpandedText: "...show less",
                        style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                // width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                      child: Text(
                        DateFormat.yMMMEd().format(comment.createdAt),
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    _CommentBtn(btnName: "Like", onPressed: () {}),
                    const SizedBox(
                      width: 20.0,
                    ),
                    _CommentBtn(btnName: "Reply", onPressed: () {})
                  ],
                ),
              )
            ])
          ],
        ));
  }
}

class _CommentBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback onPressed;

  const _CommentBtn({
    required this.btnName,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // hoverColor: Colors.amber,
      onTap: onPressed,
      child: Text(
        btnName,
        style: const TextStyle(
            fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.black54),
      ),
    );
  }
}
