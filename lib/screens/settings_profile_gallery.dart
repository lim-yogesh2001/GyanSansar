import 'package:flutter/material.dart';

class SettingsProfileGallery extends StatelessWidget {
  const SettingsProfileGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      "https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=386&q=80",
      "https://images.unsplash.com/photo-1596434300655-e48d3ff3dd5e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=486&q=80",
      "https://plus.unsplash.com/premium_photo-1673792686302-7555a74de717?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"
    ];

    return GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
        itemBuilder: (ctx, i) {
          return Container(
            child: Image.network(
              images[i],
              fit: BoxFit.cover,
            ),
          );
        });
  }
}
