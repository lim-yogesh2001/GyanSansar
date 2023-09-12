import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import '../custom_flat_button.dart';
import './comment_overlay.dart';
import '../../models/comment.dart';

class PostFooter extends StatefulWidget {
  final List<Comment> comments;
  final String likeStatus;
  const PostFooter({
    required this.comments,
    required this.likeStatus,
    super.key,
  });

  @override
  State<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  OverlayEntry? overlayEntry;
  bool isLiked = false;
  bool isFavorite = false;
  bool isVisible = false;

  void closeOverlay(bool value) {
    overlayEntry!.remove();
    overlayEntry = null;
  }

  void showOverlay() {
    overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return Align(
        widthFactor: 0.0,
        heightFactor: 10.0,
        child: CommentOverlay(
          comments: widget.comments,
          likeStatus: widget.likeStatus,
          closeOverlay: closeOverlay,
        ),
      );
    });
    Overlay.of(context).insert(overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(children: [
                  const Icon(
                    Icons.thumb_up,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    widget.likeStatus,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  )
                ])),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(children: [
                  Text(
                    widget.comments.length.toString(),
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text("Comment",
                      style: TextStyle(
                        fontSize: 12.0,
                      ))
                ])),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
                      width: 1.0, color: Colors.black38.withOpacity(0.2)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFlatButton(
                buttonTitle: isLiked ? "Liked" : "Like",
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                color: isLiked ? Colors.blue : Colors.black45,
                icon: Icons.thumb_up,
                iconColor: isLiked ? Colors.blue : Colors.black45,
              ),
              CustomFlatButton(
                buttonTitle: "Comment",
                onPressed: () {
                  setState(() {
                    isVisible = true;
                  });
                  showOverlay();
                },
                color: Colors.black45,
                icon: Icons.comment,
                iconColor: Colors.black45,
              ),
              CustomFlatButton(
                buttonTitle: "Favorite",
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                color: isFavorite ? Colors.pink : Colors.black45,
                icon: Icons.favorite,
                iconColor: isFavorite ? Colors.pink : Colors.black45,
              ),
            ],
          ),
        )
      ],
    );
  }
}
