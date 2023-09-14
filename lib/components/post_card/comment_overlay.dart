import 'package:flutter/material.dart';
import '../../models/comment.dart';
import '../comment.dart';
import './status_counter.dart';

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
  final TextEditingController _textController = TextEditingController();
  String text = "";

  @override
  void dispose() {
    // TODO: implement dispose
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onVerticalDragDown: (details) {
              initialY = details.globalPosition.dy;
              isDragging = true;
            },
            onVerticalDragUpdate: (details) {
              final changeOffset = details.globalPosition.dy - initialY;
              setState(() {
                offsetY += changeOffset;
              });
              initialY = details.globalPosition.dy;
            },
            onVerticalDragEnd: (details) {
              if (offsetY >= 30) {
                isDragging = false;
                widget.closeOverlay(true);
              }
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: offsetY < 0
                      ? 0
                      : offsetY <= 300
                          ? offsetY
                          : 300,
                  left: 0.0,
                  right: 0.0),
              // margin:
              //     const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 2.0,
                    offset: Offset(0.1, 2),
                  ),
                ],
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  StatusCounter(
                      likeStatus: widget.likeStatus,
                      numberofComments: widget.comments.length),
                  Divider(
                    height: 20.0,
                    color: Colors.grey.shade400,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: widget.comments.length,
                          itemBuilder: (context, i) {
                            return CommentComponent(
                              imageUrl: widget.comments[i].user.info?.profile,
                              username: widget.comments[i].user.givenName,
                              description: widget.comments[i].description,
                              created: widget.comments[i].createdAt,
                            );
                          })),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 320.0,
                          height: 60,
                          child: TextField(
                            controller: _textController,
                            onChanged: (value) => setState(() {
                              text = value;
                            }),
                            textInputAction: TextInputAction.send,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.withOpacity(0.2),
                                filled: true,
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                                hintText: " Write a Comment...."),
                            style: const TextStyle(fontSize: 14.0),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: text == ""
                                ? const Icon(Icons.send)
                                : const Icon(
                                    Icons.send,
                                    color: Colors.blue,
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
