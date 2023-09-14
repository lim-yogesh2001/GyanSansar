import 'package:flutter/material.dart';
import 'package:gyansansar/models/post.dart';
import '../components/post_card/post_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/post.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(randomPostFutureProvider);

    return data.when(
      data: (data) {
        List<Post> randomPostList = data.map((e) => e).toList();
        return Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: randomPostList.length,
                    itemBuilder: (context, i) {
                      return PostCard(
                          postImages: randomPostList[i].meta,
                          postComments: randomPostList[i].comment,
                          user: randomPostList[i].user,
                          subject: randomPostList[i].subject,
                          faculty: randomPostList[i].faculty,
                          description: randomPostList[i].description,
                          likeStatus: randomPostList[i].likedStatus);
                    }))
          ],
        );
      },
      error: (er, _) {
        return Text(er.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
