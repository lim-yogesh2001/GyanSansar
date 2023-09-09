import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentComponent extends StatelessWidget {
  final String? imageUrl;
  final String username;
  final String description;
  final DateTime created;

  const CommentComponent({
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
              backgroundImage:NetworkImage(imageUrl ?? "https://images.unsplash.com/photo-1582053628662-c65b0e0544e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
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
                    Container(
                      width: 270,
                      child: Text(
                        description,
                        softWrap: true,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                          // overflow: TextOverflow.ellipsis,
                          // height: 2.0,
                        ),
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
                        DateFormat.yMMMEd().format(created),
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
