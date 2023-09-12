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

class PostApi {
  String url = baseUrl;

  Future<List<RandomPost>> fetchRandomPost() async {
    final response = await http.get(
        Uri.parse("$url/post/random")
            .replace(queryParameters: {"offset": "0", "limit": "5"}),
        headers: {"Content-Type": "application/json"});
    try {
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body) as List;
        final extractedData =
            responseData.map((e) => RandomPost.fromJson(e)).toList();
        return extractedData;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

final randomPostProvider = Provider<PostApi>(
  (ref) => PostApi(),
);
