import 'dart:convert';

import 'package:gyansansar/models/attachment.dart';
import 'package:gyansansar/models/user.dart';

class Comment {
  int id;
  String userId;
  String description;
  String postId;
  DateTime createdAt;
  DateTime updatedAt;
  String likedStatus;
  String reactorCounter;
  String replyCounter;
  User user;
  List<Attachment> attachment;

  Comment({
    required this.id,
    required this.userId,
    required this.description,
    required this.postId,
    required this.createdAt,
    required this.updatedAt,
    required this.likedStatus,
    required this.reactorCounter,
    required this.replyCounter,
    required this.user,
    required this.attachment,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {

    return Comment(
      id: json['id'] as int,
      userId: json['user_id'] as String,
      description: json['description'] as String,
      postId: json['post_id'] as String,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      likedStatus: json['likedStatus'] as String,
      reactorCounter: json['reactorCounter'] as String,
      replyCounter: json['replyCounter'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      attachment: ((json['attachment'] as List<dynamic>?)?.map((e) => Attachment.fromJson(e)).toList()) ?? [],
    );
  }
}
