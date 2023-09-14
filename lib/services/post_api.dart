import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:http/http.dart" as http;
import '../const/urls.dart';
import '../models/post.dart';

class PostApi {
  String url = baseUrl;

  Future<List<Post>> fetchRandomPost() async {
    final response = await http.get(
        Uri.parse("$url/post/random")
            .replace(queryParameters: {"offset": "0", "limit": "5"}),
        headers: {"Content-Type": "application/json"});
    try {
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body) as List;
        final extractedData =
            responseData.map((e) => Post.fromJson(e)).toList();
        return extractedData;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<Post>> fetchFollowerPost() async {
    final response = await http.get(
        Uri.parse("$url/post/follower")
            .replace(queryParameters: {"offset": "0", "limit": "10"}),
        headers: {
          "Content-Type": "application/json",
          "Authorization":
              "Bearer 06f0c78851c0c8d22a021ee74eb48951a4dbc8ca7721192b9330bdba577c086e"
        });
    try {
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body) as Map<String, dynamic>;
        final postList = responseData['post'] as List;
        final extractedData = postList.map((e) => Post.fromJson(e)).toList();
        return extractedData;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future <List<Post>> fetchAnswersPost() async {
    final response = await http.get(
        Uri.parse("$url/post/answer")
            .replace(queryParameters: {"offset": "0", "limit": "10"}),
        headers: {
          "Content-Type": "application/json",
          "Authorization":
              "Bearer 06f0c78851c0c8d22a021ee74eb48951a4dbc8ca7721192b9330bdba577c086e"
        });
    try {
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body) as Map<String, dynamic>;
        final postList = responseData['post'] as List;
        final extractedData = postList.map((e) => Post.fromJson(e)).toList();
        return extractedData;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  
}

final postProvider = Provider<PostApi>(
  (ref) => PostApi(),
);
