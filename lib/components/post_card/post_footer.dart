import 'package:flutter/material.dart';
import '../custom_flat_button.dart';

class PostFooter extends StatefulWidget {
  const PostFooter({
    super.key,
  });

  @override
  State<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  bool isLiked = false;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "01",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Row(
                children: [
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Comment",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  )
                ],
              ),
            ),
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
                onPressed: () {},
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
