import 'dart:convert';

import 'package:gyansansar/models/comment.dart';
import 'package:gyansansar/models/faculty.dart';
import 'package:gyansansar/models/meta.dart';
import 'package:gyansansar/models/subject.dart';
import 'package:gyansansar/models/user.dart';

List<RandomPost> randomPostFromJson(String str) => List<RandomPost>.from(
      json.decode(str).map((x) => RandomPost.fromJson(x)),
    );

class RandomPost {
  final int id;
  final String facultyId;
  final String subjectId;
  final String userId;
  final String type;
  final String description;
  final String notificationStatus;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String likedStatus;
  final String favouriteStatus;
  final String reactorCounter;
  final String commentCounter;
  final List<Meta> meta;
  final Subject subject;
  final Faculty faculty;
  final User user;
  final List<Comment> comment;

  RandomPost({
    required this.id,
    required this.facultyId,
    required this.subjectId,
    required this.userId,
    required this.type,
    required this.description,
    required this.notificationStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.likedStatus,
    required this.favouriteStatus,
    required this.reactorCounter,
    required this.commentCounter,
    required this.meta,
    required this.subject,
    required this.faculty,
    required this.user,
    required this.comment,
  });

  factory RandomPost.fromJson(Map<String, dynamic> json) {
    return RandomPost(
      id: json['id'] as int,
      facultyId: json['faculty_id'] as String,
      subjectId: json['subject_id'] as String,
      userId: json['user_id'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      notificationStatus: json['notification_status'] as String,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      likedStatus: json['likedStatus'] as String,
      favouriteStatus: json['favouriteStatus'] as String,
      reactorCounter: json['reactorCounter'] as String,
      commentCounter: json['commentCounter'] as String,
      meta: (json['meta'] as List<dynamic>?)
          ?.map((item) => Meta.fromJson(item as Map<String, dynamic>))
          .toList() ?? [],
      subject: Subject.fromJson(json['subject'] as Map<String, dynamic>),
      faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      comment: (json['comment'] as List<dynamic>?)
          ?.map((item) => Comment.fromJson(item as Map<String, dynamic>))
          .toList() ?? [],
    );
  }
}
