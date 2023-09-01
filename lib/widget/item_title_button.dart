import 'package:flutter/material.dart';

class ItemTitleAndButton extends StatelessWidget {
  final String itemTitle;
  final String buttonTitle;
  final VoidCallback onPressed;
  const ItemTitleAndButton({
    required this.buttonTitle,
    required this.itemTitle,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
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
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: const TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}