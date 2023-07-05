import 'package:flutter/material.dart';
import './post_header.dart';
import 'package:gyansansar/components/staggered_widget_2.dart';
import 'package:gyansansar/components/staggered_widget_3.dart';
import './post_footer.dart';

class PostCard extends StatelessWidget {
  final List postItems;
  const PostCard({
    required this.postItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget renderCollage = Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Image.network(
        'https://images.unsplash.com/photo-1491841573634-28140fc7ced7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        fit: BoxFit.cover,
      ),
    );

    if (postItems.length == 2) {
      renderCollage = StaggeredGridWidget2(
        gridItems: postItems,
      );
    } else if (postItems.length >= 3) {
      renderCollage = StaggeredGridWidget3(
        gridItems: postItems,
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
          PostFooter(),
        ],
      ),
    );
  }
}
