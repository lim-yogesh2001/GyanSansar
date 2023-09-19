import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gyansansar/models/post.dart';
import '../provider/post_provider.dart';
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
                        post: followerPosts[i],
                        );
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
