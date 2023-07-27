import 'package:flutter/material.dart';
import '../custom_flat_button.dart';
import '../comment.dart';

class CommentOverlay extends StatelessWidget {
  final List comments;
  const CommentOverlay({
    required this.comments,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> renderedComments = comments.map((e) {
      // int i = comments.indexOf(e);
      return Comment(
        imageUrl: e['image'],
        username: e['username'],
        description: e['comment'],
        created: "1hr",
      );
    }).toList();

    return Container(
        height: 350.0,
        margin: const EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 0.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2.0,
                  offset: Offset(0.1, 2)),
            ]),
        child: Column(
          children: [
            const _StatusCounter(),
            Divider(
              color: Colors.grey.shade300,
              height: 20.0,
            ),
            Expanded(
              child: Container(
                height: 500,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...renderedComments,
                    ],
                  ),
                ),
              ),
            ),
            CustomFlatButton(buttonTitle: "Comment", onPressed: (){}, color: Colors.black87, icon: Icons.comment, iconColor: Colors.black87)
          ],
        ));
  }
}

class _StatusCounter extends StatelessWidget {
  const _StatusCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          Icon(
            Icons.thumb_up,
            color: Colors.blue,
            size: 16.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            "10",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14.0,
          )
        ],
      ),
    );
  }
}
