import 'package:flutter/material.dart';
import '../widget/item_title_button.dart';

class SyllabustTitleNdItems extends StatelessWidget {
  const SyllabustTitleNdItems({required this.title, super.key});

  final String title;

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
              children: [
                ItemTitleAndButton(
                  buttonTitle: "Read / Download",
                  itemTitle: "Ut omnis magnam.",
                  onPressed: () {},
                ),
                ItemTitleAndButton(
                  buttonTitle: "Read / Download",
                  itemTitle: "Aliquam ut.",
                  onPressed: () {},
                ),
                ItemTitleAndButton(
                  buttonTitle: "Read / Download",
                  itemTitle: "Officia molestiae voluptatem.",
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
