import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50.0,
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80'),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Chandler Hayes',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                      children: [
                        const TextSpan(
                          text: ' has posted in ',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                        ),
                        TextSpan(
                          text: 'Place.',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                        const TextSpan(
                          text: ' Subject of ',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                        ),
                        TextSpan(
                          text: 'BEd.IT (Tribhuvan University)',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                        const TextSpan(
                          text: ' Course. ',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                const Text(
                  '1st January, 2023 12:00 P.M',
                  style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              PopupMenuButton(
                  surfaceTintColor: Colors.white,
                  iconSize: 18.0,
                  itemBuilder: (ctx) {
                    return [
                      const PopupMenuItem(
                        child: Text('Edit'),
                      ),
                      const PopupMenuItem(
                        child: Text('Delete'),
                      ),
                      const PopupMenuItem(
                        child: Text('Report'),
                      ),
                    ];
                  }),
            ],
          ),
        )
      ],
    );
  }
}
