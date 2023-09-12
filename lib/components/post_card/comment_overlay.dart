import 'package:flutter/material.dart';
import 'package:gyansansar/screens/comment_screen.dart';
import '../../models/comment.dart';
import '../custom_flat_button.dart';
import '../comment.dart';

class CommentOverlay extends StatefulWidget {
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
  State<CommentOverlay> createState() => _CommentOverlayState();
}

class _CommentOverlayState extends State<CommentOverlay> {
  double offsetY = 0.0; // initial Y postition
  double initialY = 0.0; // initial Y position when drag starts.
  bool isDragging = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ModalBarrier(
          color: Colors.black26,
          dismissible: false,
        ),
        Container(
            height: MediaQuery.of(context).size.height * .95,
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
                GestureDetector(
                  onVerticalDragDown: (details) {
                    initialY = details.globalPosition.dy;
                    isDragging = true;
                    print(initialY);
                  },
                  onVerticalDragUpdate: (details) {
                    final changeOffset = details.globalPosition.dy - initialY;

                    setState(() {
                      offsetY += changeOffset;
                    });
                    initialY = details.globalPosition.dy;
                  },
                  onVerticalDragEnd: (details) {
                    if (offsetY > 120) {
                      isDragging = false;
                      widget.closeOverlay(true);
                    }
                  },
                  child: _StatusCounter(
                    likeStatus: widget.likeStatus,
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  height: 20.0,
                ),
                Expanded(
                  child: Container(
                    height: 550,
                    child: ListView.builder(
                        itemCount: widget.comments.length,
                        itemBuilder: (context, i) {
                          return CommentComponent(
                            imageUrl: widget.comments[i].user.info?.profile,
                            username: widget.comments[i].user.givenName,
                            description: widget.comments[i].description,
                            created: widget.comments[i].createdAt,
                          );
                        }),
                  ),
                ),
                CustomFlatButton(
                  buttonTitle: "Comment",
                  onPressed: () {
                    _showCommentBox(context);
                  },
                  color: Colors.black,
                  icon: Icons.comment,
                  iconColor: Colors.black,
                )
              ],
            )),
      ],
    );
  }

  void _showCommentBox(BuildContext context) {}
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
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
          ),
          Container(
            child: Text("Okay"),
          )
        ],
      ),
    );
  }
}
