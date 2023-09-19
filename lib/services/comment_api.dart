import 'dart:convert';

import 'package:gyansansar/const/urls.dart';
import 'package:gyansansar/models/comment.dart';
import 'package:http/http.dart' as http;

class CommentApi {
  final String url = baseUrl;

  Future<Map> postComment(
      postId, String description, List uploadCommentFiles) async {
    try {
      final Map<String, dynamic> commentData = {
        'post_id': postId,
        'description': description,
        'uploadCommentFiles': uploadCommentFiles,
      };
      final response = await http.post(Uri.parse("$url/comment/create"),
          body: json.encode(commentData),
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer 9315a26de14b739557a4ed16fd7ceb5ff280e62ac506d4c9b85d85bf33f076b3'
          });
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final Map<String, dynamic> comment = {
          'flag': responseData['flag'],
          'comment': Comment.fromJson(responseData['comment'])
        };
        return comment;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

