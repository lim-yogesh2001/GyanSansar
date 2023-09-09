import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gyansansar/models/comment.dart';
import 'package:gyansansar/models/faculty.dart';
import 'package:gyansansar/models/meta.dart';
import 'package:gyansansar/models/subject.dart';
import 'package:gyansansar/models/user.dart';
import "package:http/http.dart" as http;
import '../const/urls.dart';
import '../models/random_post.dart';

class ApiServices {
  String url = baseUrl;

  Future<List<RandomPost>> fetchRandomPost() async {
    final response = await http.get(
        Uri.parse("$url/post/random")
            .replace(queryParameters: {"offset": "0", "limit": "5"}),
        headers: {"Content-Type": "application/json"});
    try {
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body) as List;
        print(responseData[0]['id'].runtimeType);
        final extractedData = responseData
            .map((e) => RandomPost(
                id: e['id'],
                facultyId: e['faculty_id'],
                subjectId: e['subject_id'],
                userId: e['user_id'],
                type: e['type'],
                description: e['description'],
                notificationStatus: e['notification_status'],
                createdAt: DateTime.parse(e['created_at']),
                updatedAt: DateTime.parse(e['updated_at']),
                likedStatus: e['likedStatus'],
                favouriteStatus: e['favouriteStatus'],
                reactorCounter: e['reactorCounter'],
                commentCounter: e['commentCounter'],
                meta: (e['meta'] as List)
                    .map((val) => Meta.fromJson(val))
                    .toList(),
                subject: Subject.fromJson(e['subject']),
                faculty: Faculty.fromJson(e['faculty']),
                user: User.fromJson(e['user']),
                comment: (e['comment'] as List)
                    .map((val) => Comment.fromJson(val))
                    .toList()))
            .toList();
            print(extractedData);
        return extractedData;
        // return responseData.map((e) => RandomPost.fromJson(e)).toList();
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

final randomPostProvider = Provider<ApiServices>(
  (ref) => ApiServices(),
);
