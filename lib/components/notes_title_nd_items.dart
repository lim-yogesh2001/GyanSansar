import 'package:flutter/material.dart';

class NotesTitleAndItems extends StatelessWidget {
  final String title;
  const NotesTitleAndItems({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0, 10.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                // ElevatedButton(
                //   style: const ButtonStyle(
                //       backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                //   onPressed: () {},
                //   child: const Text(
                //     "Add",
                //     style: TextStyle(color: Colors.black),
                //   ),
                // )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NotesItems(
                  itemTitle: "0.1. Saint asperioirer",
                  onView: () {},
                ),
                NotesItems(
                  itemTitle: "0.2. Natsu Dragneel",
                  onView: () {},
                ),
                NotesItems(
                  itemTitle: "0.3. Worm whole",
                  onView: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NotesItems extends StatelessWidget {
  final String itemTitle;
  final VoidCallback onView;
  const NotesItems({
    required this.itemTitle,
    required this.onView,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
            child: Text(
              itemTitle,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: Colors.teal,
              ),
            ),
          ),
          SizedBox(
            height: 35.0,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.teal)),
              onPressed: onView,
              child: const Text(
                "view",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
