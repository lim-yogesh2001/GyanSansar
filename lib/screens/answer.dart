import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/post_card/post_card.dart';
import '../models/post.dart';
import '../provider/post_provider.dart';

class AnswerScreen extends ConsumerWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final answerProvider = ref.watch(answerPostProvider);

    return answerProvider.when(
      data: (data) {
        List<Post> answerPosts = data.map((e) => e).toList();
        return Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: answerPosts.length,
                    itemBuilder: (context, i) {
                      return PostCard(
                         post: answerPosts[i],
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
