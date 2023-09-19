import 'package:flutter/material.dart';
import 'package:gyansansar/models/post.dart';
import '../components/post_card/post_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/post_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(randomPostFutureProvider);
    final randomPostList = ref.watch(randomPostProvider);

    return data.when(
      data: (data) {
        if (data.isEmpty){
          return const Center(child: CircularProgressIndicator());
        } else {
          return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: randomPostList.length,
                  itemBuilder: (context, i) {
                    return PostCard(
                          post: randomPostList[i],
                        );
                  }),
            )
          ],
        );
        }
        
        
      },
      error: (er, _) {
        return Text(er.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
