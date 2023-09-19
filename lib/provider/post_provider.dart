import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gyansansar/models/comment.dart';
import 'package:gyansansar/models/post.dart';
import 'package:gyansansar/services/post_api.dart';
import 'package:http/http.dart' as http;
import '../const/urls.dart';

final randomPostFutureProvider = FutureProvider<List<Post>>((ref) async {
  return ref.watch(postProvider).fetchRandomPost();
});

class RandomPostNotifier extends StateNotifier<List<Post>> {
  RandomPostNotifier(List<Post>? initialData) : super(initialData!);
  void updateRandomPost(List<Post> newList) {
    state = [...newList];
  }

  Post randomPostById(int id){
    return state.firstWhere((element) => element.id == id);
  }

  Future<bool> addComment(postId, description, List? uploadCommentFiles) async {
    String url = baseUrl;
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
                'Bearer e2ae424c84b527017af0b3d8099ecf918802b61905bb4882130a84444291efa8'
          });
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final Map<String, dynamic> comment = {
          'flag': responseData['flag'],
          'comment': Comment.fromJson(responseData['comment'])
        };
        state = state
            .map(
              (post) => post.id == postId
                  ? post
                      .copyWith(comment: [...post.comment, comment['comment']])
                  : post,
            )
            .toList();
        return comment['flag'];
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

final randomPostProvider =
    StateNotifierProvider<RandomPostNotifier, List<Post>>(
  (ref) {
    final initialData = ref.watch(randomPostFutureProvider);
    return RandomPostNotifier(initialData.asData?.value ?? []);
  },
);

final followerPostProvider = FutureProvider<List<Post>>((ref) async {
  return ref.watch(postProvider).fetchFollowerPost();
});

final answerPostProvider = FutureProvider<List<Post>>((ref) async {
  return ref.watch(postProvider).fetchAnswersPost();
});
