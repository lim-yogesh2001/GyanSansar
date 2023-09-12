

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gyansansar/models/random_post.dart';
import 'package:gyansansar/services/post_api.dart';

final randomPostFutureProvider = FutureProvider<List<RandomPost>>((ref) async {
  return ref.watch(randomPostProvider).fetchRandomPost();
});