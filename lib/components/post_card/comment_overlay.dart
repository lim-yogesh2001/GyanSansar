import 'package:flutter/material.dart';
import 'package:gyansansar/screens/comment_screen.dart';
import '../../models/comment.dart';
import '../custom_flat_button.dart';
import '../comment.dart';

class CommentOverlay extends StatelessWidget {
  final List<Comment> comments;
  final String likeStatus;
  final void Function(bool) closeOverlay;
  const CommentOverlay({
    required this.comments,
    required this.likeStatus,
    required this.closeOverlay,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // List<Widget> renderedComments = comments.map((e) {
    //   // int i = comments.indexOf(e);
    //   return Comment(
    //     imageUrl: e['image'],
    //     username: e['username'],
    //     description: e['comment'],
    //     created: "1hr",
    //   );
    // }).toList();

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
            _StatusCounter(likeStatus: likeStatus,),
            Divider(
              color: Colors.grey.shade300,
              height: 20.0,
            ),
            Expanded(
              child: Container(
                height: 550,
                child: ListView.builder(
                    itemCount: comments.length,
                    itemBuilder: (context, i) {
                      return CommentComponent(
                        imageUrl: comments[i].user.info?.profile,
                        username: comments[i].user.givenName,
                        description: comments[i].description,
                        created: comments[i].createdAt,
                      );
                    }),
              ),
            ),
            CustomFlatButton(
                buttonTitle: "Comment",
                onPressed: () {
                  closeOverlay(false);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const CommentScreen()));
                },
                color: Colors.black87,
                icon: Icons.comment,
                iconColor: Colors.black87)
          ],
        ));
  }
}

class _StatusCounter extends StatelessWidget {
  final String likeStatus;
  const _StatusCounter({
    required this.likeStatus,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Icon(
            Icons.thumb_up,
            color: Colors.blue,
            size: 16.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            likeStatus,
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14.0,
          )
        ],
      ),
    );
  }
}
