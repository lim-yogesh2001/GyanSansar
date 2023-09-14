import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gyansansar/models/post.dart';
import '../provider/post.dart';
import '../components/post_card/post_card.dart';

class FollowingScreen extends ConsumerWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final followerData = ref.watch(followerPostProvider);

    return followerData.when(
      data: (data) {
        List<Post> followerPosts = data.map((e) => e).toList();
        return Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: followerPosts.length,
                    itemBuilder: (context, i) {
                      return PostCard(
                          postImages: followerPosts[i].meta,
                          postComments: followerPosts[i].comment,
                          user: followerPosts[i].user,
                          subject: followerPosts[i].subject,
                          faculty: followerPosts[i].faculty,
                          description: followerPosts[i].description,
                          likeStatus: followerPosts[i].likedStatus);
                    }))
          ],
        );
      },
      error: (er, _) {
        return Text(er.toString());
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
