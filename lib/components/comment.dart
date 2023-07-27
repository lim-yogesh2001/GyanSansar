import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String imageUrl;
  final String username;
  final String description;
  final String created;

  const Comment({
    super.key,
    required this.imageUrl,
    required this.username,
    required this.description,
    required this.created,
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
              backgroundColor: Colors.white,
              radius: 18.0,
              backgroundImage: NetworkImage(imageUrl),
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
                      username,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      description,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                      child: Text(
                        created,
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
    return InkWell(
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
