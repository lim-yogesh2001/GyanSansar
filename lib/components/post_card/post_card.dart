import 'package:flutter/material.dart';
import 'package:gyansansar/components/post_card/post_comment.dart';
import 'package:gyansansar/models/post.dart';
import 'package:gyansansar/screens/post_image.dart';
import './post_header.dart';
import 'package:gyansansar/components/staggered_widget_2.dart';
import 'package:gyansansar/components/staggered_widget_3.dart';
import './post_description.dart';
import './post_footer.dart';

class PostCard extends StatelessWidget {
  final Post post;
  
  const PostCard({
    required this.post,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget renderCollage = post.meta.isEmpty
        ? const SizedBox.shrink()
        : InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostImageScreen(
                  images: post.meta,
                  clickedImageIndex: post.meta.indexOf(post.meta[0]),
                ),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.network(
                post.meta[0].attachment,
                fit: BoxFit.cover,
              ),
            ),
          );

    if (post.meta.length == 2) {
      renderCollage = StaggeredGridWidget2(
        gridItems: post.meta,
      );
    } else if (post.meta.length >= 3) {
      renderCollage = StaggeredGridWidget3(
        gridItems: post.meta,
      );
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      // height: h * 0.5,
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(user: post.user, subject: post.subject, faculty: post.faculty),
          PostDescription(description: post.description),
          renderCollage,
          const SizedBox(
            height: 20.0,
          ),
          PostFooter(
            postId: post.id,
          ),
          PostComment(comments: post.comment)
        ],
      ),
    );
  }
}
