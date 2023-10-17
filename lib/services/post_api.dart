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
            .replace(queryParameters: {"offset": "0", "limit": "20"}),
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
              "Bearer f0a7aee98dca51035a30781faf14728108356f9bb6f942564f3dad0b3bca5612"
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
              "Bearer f0a7aee98dca51035a30781faf14728108356f9bb6f942564f3dad0b3bca5612"
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
