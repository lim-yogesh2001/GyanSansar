import 'package:flutter/material.dart';

class StatusCounter extends StatelessWidget {
  final String likeStatus;
  final int numberofComments;
  const StatusCounter({
    required this.likeStatus,
    required this.numberofComments,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                const Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                  size: 16.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  likeStatus,
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14.0,
                )
              ],
            ),
          ),
          Text(
            "$numberofComments comments",
            style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
                color: Colors.black87),
          )
        ],
      ),
    );
  }
}
