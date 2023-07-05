import 'package:flutter/material.dart';

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
              SizedBox(
                height: 30,
                child: TextButton.icon(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.grey.shade300),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      iconSize: MaterialStateProperty.all(16.0),
                      iconColor: MaterialStateProperty.all(
                          isLiked ? Colors.blue : Colors.black45),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          fontSize: 14.0,
                        ),
                      )),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: Text(
                    isLiked ? "Liked" : "Like",
                    style: TextStyle(color: isLiked ? Colors.blue : Colors.black45),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                child: TextButton.icon(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.grey.shade300),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      iconSize: MaterialStateProperty.all(16.0),
                      iconColor: MaterialStateProperty.all(Colors.black45),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 14.0),
                      )),
                  onPressed: () {},
                  icon: const Icon(Icons.comment),
                  label: const Text(
                    "Comment",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                child: TextButton.icon(
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Colors.grey.shade300),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      iconSize: MaterialStateProperty.all(16.0),
                      iconColor: MaterialStateProperty.all(isFavorite ? Colors.pink : Colors.black45),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 14.0),
                      )),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: const Icon(Icons.favorite),
                  label: Text(
                    "Favorite",
                    style: TextStyle(color: isFavorite ? Colors.pink : Colors.black45),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
