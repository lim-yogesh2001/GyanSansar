import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../comment.dart';
import './status_counter.dart';
import '../../provider/post_provider.dart';

class CommentOverlay extends ConsumerStatefulWidget {
  final int postId;
  final void Function(bool) closeOverlay;
  const CommentOverlay({
    required this.postId,
    required this.closeOverlay,
    super.key,
  });

  @override
  ConsumerState<CommentOverlay> createState() => _CommentOverlayState();
}

class _CommentOverlayState extends ConsumerState<CommentOverlay> {
  double offsetY = 0.0; // initial Y postition
  double initialY = 0.0; // initial Y position when drag starts.
  bool isDragging = false;
  final TextEditingController _textController = TextEditingController();
  String text = "";
  bool isLoading = false;

  void submitComment() async {
    if (_textController.text.isEmpty) {
      return;
    } else {
      setState(() {
        isLoading = true;
      });
      try {
        final result = await ref.read(randomPostProvider.notifier).addComment(
          widget.postId,
          _textController.text,
          [],
        );
        if (result) {
          setState(() {
            isLoading = false;
          });
          _textController.text = "";
        }
      } catch (e) {
        // ignore: use_build_context_synchronously
        throw Exception(e);
      }
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final post =
        ref.watch(randomPostProvider.notifier).randomPostById(widget.postId);
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
                      likeStatus: post.likedStatus,
                      numberofComments: post.comment.length),
                  Divider(
                    height: 20.0,
                    color: Colors.grey.shade400,
                  ),
                  Expanded(
                      child: isLoading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : ListView.builder(
                              itemCount: post.comment.length,
                              itemBuilder: (context, i) {
                                return CommentComponent(
                                  comment: post.comment[i],
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
                            onChanged: (value) => setState(() => text = value),
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
                            onPressed: submitComment,
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
