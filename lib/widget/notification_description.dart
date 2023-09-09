import 'package:flutter/material.dart';


TextSpan showDescription(String category) {
    return TextSpan(
        text: category == "Like"
            ? "  likes your topic."
            : category == "Favorite"
                ? "  added your post as a Favorite."
                : "  commented on your post.",
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ));
  }