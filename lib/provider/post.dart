

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gyansansar/models/post.dart';
import 'package:gyansansar/services/post_api.dart';

final randomPostFutureProvider = FutureProvider<List<Post>>((ref) async {
  return ref.watch(postProvider).fetchRandomPost();
});

final followerPostProvider = FutureProvider<List<Post>>((ref) async {
  return ref.watch(postProvider).fetchFollowerPost();
});

final answerPostProvider = FutureProvider<List<Post>>((ref) async {
  return ref.watch(postProvider).fetchAnswersPost();
});