import 'package:flutter/material.dart';

class QuestionBankTitleAndItems extends StatelessWidget {
  final String title;
  final List<Widget> items;
  const QuestionBankTitleAndItems(
      {required this.title, required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items,
            ),
          )
        ],
      ),
    );
  }
}
