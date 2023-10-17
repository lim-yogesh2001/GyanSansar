// import 'package:flutter/material.dart';
// import 'package:gyansansar/models/notification.dart';
// import '../widget/notification_description.dart';

// enum NotficationType{
//   like,
//   post,
//   favorite,
//   comment,
// }


// class NotificationComps extends StatefulWidget {
//   final NotificationModel notification;
//   const NotificationComps({
//     required this.notification,
//     super.key,
//   });

//   @override
//   State<NotificationComps> createState() => _NotificationCompsState();
// }

// class _NotificationCompsState extends State<NotificationComps> {
//   var status;

//   @override
//   void initState() {
//     status = widget.notification.readStatus;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget? notiDescription = RichText(
//       text: TextSpan(
//         text: widget.notification.notificationCreator.givenName,
//         style: const TextStyle(
//           fontSize: 16.0,
//           fontWeight: FontWeight.w700,
//           color: Colors.teal,
//         ),
//         children: [showDescription(widget.notification.type)],
//       ),
//     );

//     // if (widget.notification['users'].length == 2) {
//     //   notiDescription = RichText(
//     //     text: TextSpan(
//     //         text: widget.notification['users'][0]['username'],
//     //         style: const TextStyle(
//     //           fontSize: 16.0,
//     //           fontWeight: FontWeight.w700,
//     //           color: Colors.teal,
//     //         ),
//     //         children: [
//     //           const TextSpan(
//     //             text: " and ",
//     //             style: TextStyle(
//     //               color: Colors.black54,
//     //               fontSize: 14.0,
//     //               fontWeight: FontWeight.w500,
//     //             ),
//     //           ),
//     //           TextSpan(
//     //             text: widget.notification['users'][1]['username'],
//     //             style: const TextStyle(
//     //               fontSize: 16.0,
//     //               fontWeight: FontWeight.w700,
//     //               color: Colors.teal,
//     //             ),
//     //           ),
//     //           showDescription(widget.notification['category'])
//     //         ]),
//     //   );
//     // } else if (widget.notification['users'].length >= 3) {
//     //   notiDescription = RichText(
//     //     text: TextSpan(
//     //         text: "${widget.notification['users'][0]['username']}, ",
//     //         style: const TextStyle(
//     //           fontSize: 14.0,
//     //           fontWeight: FontWeight.w700,
//     //           color: Colors.teal,
//     //         ),
//     //         children: [
//     //           TextSpan(
//     //             text: widget.notification['users'][1]['username'],
//     //             style: const TextStyle(
//     //               fontSize: 14.0,
//     //               fontWeight: FontWeight.w700,
//     //               color: Colors.teal,
//     //             ),
//     //           ),
//     //           const TextSpan(
//     //             text: " and ",
//     //             style: TextStyle(
//     //               color: Colors.black54,
//     //               fontSize: 14.0,
//     //               fontWeight: FontWeight.w500,
//     //             ),
//     //           ),
//     //           TextSpan(
//     //             text: widget.notification['users'][2]['username'],
//     //             style: const TextStyle(
//     //               fontSize: 14.0,
//     //               fontWeight: FontWeight.w700,
//     //               color: Colors.teal,
//     //             ),
//     //           ),
//     //           showDescription(widget.notification['category'])
//     //         ]),
//     //   );
//     // }

//     // } else if (notification['users'].length >=3 ) {
//     //   notiDescription =
//     // }

//     return InkWell(
//       onTap: () {
//         if (status == '0') {
//           setState(() {
//             status = "1";
//           });
//         }
//       },
//       child: Container(
//         color: status == "0" ? Colors.lightBlue.shade100 : null,
//         padding: const EdgeInsets.all(5.0),
//         margin: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 3.0),
//         child: Row(
//           children: [
//             Stack(
//               children: [
//                 CircleAvatar(
//                   radius: 35.0,
//                   backgroundImage:
//                       NetworkImage(widget.notification.notificationCreator.info.profile ?? "https://images.unsplash.com/photo-1582053628662-c65b0e0544e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
//                 ),
//                 Positioned(
//                     right: 3,
//                     bottom: 0,
//                     child: Icon(
//                       widget.notification['category'] == "Like"
//                           ? Icons.thumb_up
//                           : widget.notification['category'] == "Favorite"
//                               ? Icons.favorite
//                               : Icons.comment,
//                       color: widget.notification['category'] == "Like"
//                           ? Colors.blue
//                           : widget.notification['category'] == 'Favorite'
//                               ? Colors.red
//                               : Colors.orange,
//                     ))
//               ],
//             ),
//             const SizedBox(
//               width: 10.0,
//             ),
//             Expanded(
//               child: Container(
//                 // height: 60.0,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     notiDescription,
//                     Text(
//                       widget.notification.createdAt,
//                       style: const TextStyle(
//                         color: Colors.black87,
//                         fontSize: 12.0,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             PopupMenuButton(
//               icon: const Icon(Icons.more_horiz),
//               itemBuilder: (BuildContext context) {
//                 return [
//                   const PopupMenuItem(
//                     child: Text(
//                       "Remove this notifications",
//                     ),
//                   ),
//                   const PopupMenuItem(
//                     child: Text(
//                       "Report",
//                     ),
//                   )
//                 ];
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
