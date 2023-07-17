import 'package:flutter/material.dart';

class PostComment extends StatelessWidget {
  final List comment;
  const PostComment({
    required this.comment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return comment.isEmpty ? SizedBox.shrink() : Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        margin: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 18.0,
              backgroundImage: NetworkImage(comment[0]['image']),
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
                      comment[0]['username'],
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      comment[0]['comment'],
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        overflow: TextOverflow.ellipsis,
                        height: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Like",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Reply",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              )
            ])
          ],
        ));
  }
}
