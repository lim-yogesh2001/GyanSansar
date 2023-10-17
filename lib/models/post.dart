import 'dart:convert';

import 'package:gyansansar/models/comment.dart';
import 'package:gyansansar/models/faculty.dart';
import 'package:gyansansar/models/meta.dart';
import 'package:gyansansar/models/subject.dart';
import 'package:gyansansar/models/user.dart';

List<Post> randomPostFromJson(String str) => List<Post>.from(
      json.decode(str).map((x) => Post.fromJson(x)),
    );

class Post {
  final String id;
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

  Post({
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

  Post copyWith({
      String? id,
   String? facultyId,
   String? subjectId,
   String? userId,
   String? type,
   String? description,
   String? notificationStatus,
   DateTime? createdAt,
   DateTime? updatedAt,
   String? likedStatus,
   String? favouriteStatus,
   String? reactorCounter,
   String? commentCounter,
   List<Meta>? meta,
   Subject? subject,
   Faculty? faculty,
   User? user,
   List<Comment>? comment}
  ){
    return Post(
      id: id ?? this.id,
      facultyId: facultyId ?? this.facultyId,
      subjectId: subjectId ?? this.subjectId,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      description: description ?? this.description,
      notificationStatus: notificationStatus ?? this.notificationStatus,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      likedStatus: likedStatus ?? this.likedStatus,
      favouriteStatus: favouriteStatus ?? this.favouriteStatus,
      reactorCounter: reactorCounter ?? this.reactorCounter,
      commentCounter: commentCounter ?? this.commentCounter,
      meta: meta ?? this.meta,
      subject: subject ?? this.subject,
      faculty: faculty ?? this.faculty,
      user: user ?? this.user,
      comment: comment ?? this.comment,
    );
  }

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as String,
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
