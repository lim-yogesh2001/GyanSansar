import 'package:flutter/material.dart';
import 'package:gyansansar/components/post_card/post_comment.dart';
import 'package:gyansansar/screens/post_image.dart';
import './post_header.dart';
import 'package:gyansansar/components/staggered_widget_2.dart';
import 'package:gyansansar/components/staggered_widget_3.dart';
import './post_footer.dart';

class PostCard extends StatelessWidget {
  final List<Map> postImages;
  final List postComments;
  const PostCard({
    required this.postImages,
    required this.postComments,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget renderCollage = InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PostImageScreen(images: postImages, clickedImageIndex: postImages.indexOf(postImages[0]),),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Image.network(
          postImages[0]["picture"],
          fit: BoxFit.cover,
        ),
      ),
    );

    if (postImages.length == 2) {
      renderCollage = StaggeredGridWidget2(
        gridItems: postImages,
      );
    } else if (postImages.length >= 3) {
      renderCollage = StaggeredGridWidget3(
        gridItems: postImages,
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
        children: [
          const PostHeader(),
          renderCollage,
          const SizedBox(
            height: 20.0,
          ),
          PostFooter(comments: postComments,),
          PostComment(comments: postComments
          ,)
        ],
      ),
    );
  }
}
