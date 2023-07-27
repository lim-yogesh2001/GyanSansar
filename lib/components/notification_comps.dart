import 'package:flutter/material.dart';

class NotificationComps extends StatefulWidget {
  final Map notification;
  const NotificationComps({
    required this.notification,
    super.key,
  });

  @override
  State<NotificationComps> createState() => _NotificationCompsState();
}

class _NotificationCompsState extends State<NotificationComps> {
  var status;

  @override
  void initState() {
    status = widget.notification['status'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget? notiDescription = RichText(
      text: TextSpan(
        text: widget.notification['users'][0]['username'],
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: Colors.teal,
        ),
        children: [showDescription(widget.notification['category'])],
      ),
    );

    if (widget.notification['users'].length == 2) {
      notiDescription = RichText(
        text: TextSpan(
            text: widget.notification['users'][0]['username'],
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.teal,
            ),
            children: [
              const TextSpan(
                text: " and ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: widget.notification['users'][1]['username'],
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal,
                ),
              ),
              showDescription(widget.notification['category'])
            ]),
      );
    } else if (widget.notification['users'].length >= 3) {
      notiDescription = RichText(
        text: TextSpan(
            text: "${widget.notification['users'][0]['username']}, ",
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.teal,
            ),
            children: [
              TextSpan(
                text: widget.notification['users'][1]['username'],
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal,
                ),
              ),
              const TextSpan(
                text: " and ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: widget.notification['users'][2]['username'],
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal,
                ),
              ),
              showDescription(widget.notification['category'])
            ]),
      );
    }

    // } else if (notification['users'].length >=3 ) {
    //   notiDescription =
    // }

    return InkWell(
      onTap: () {
        if (status == 'unchecked') {
          setState(() {
            status = "checked";
          });
        }
      },
      child: Container(
        color: status == "unchecked" ? Colors.lightBlue.shade100 : null,
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 3.0),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage:
                      NetworkImage(widget.notification['users'][0]['image']),
                ),
                Positioned(
                    right: 3,
                    bottom: 0,
                    child: Icon(
                      widget.notification['category'] == "Like"
                          ? Icons.thumb_up
                          : widget.notification['category'] == "Favorite"
                              ? Icons.favorite
                              : Icons.comment,
                      color: widget.notification['category'] == "Like"
                          ? Colors.blue
                          : widget.notification['category'] == 'Favorite'
                              ? Colors.red
                              : Colors.orange,
                    ))
              ],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Container(
                // height: 60.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    notiDescription,
                    Text(
                      widget.notification['time'],
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz),
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    child: Text(
                      "Remove this notifications",
                    ),
                  ),
                  const PopupMenuItem(
                    child: Text(
                      "Report",
                    ),
                  )
                ];
              },
            )
          ],
        ),
      ),
    );
  }

  TextSpan showDescription(String category) {
    return TextSpan(
        text: category == "Like"
            ? "  likes your topic."
            : category == "Favorite"
                ? "  added your post as a Favorite."
                : "  commented on your post.",
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ));
  }
}
