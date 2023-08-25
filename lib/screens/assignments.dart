import 'package:flutter/material.dart';
import '../components/assignment_indicator.dart';
import '../components/assignment_datatable.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  static final indicators = [
    {"indicator": "Total", "color": Colors.blue[600]},
    {"indicator": "Completed", "color": Colors.green[600]},
    {"indicator": "Pending", "color": Colors.yellow[600]},
    {"indicator": "Cancelled", "color": Colors.red[600]}
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2.0,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 10.0,
            ),
            children: indicators
                .map((value) => AssignmentIndicator(
                      indicator: value['indicator'].toString(),
                      color: value["color"] as Color,
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_2),
                  label: const Text("Filter"),
                )
              ],
            ),
          ),
          AssignmentDatatable()
        ],
      ),
    );
  }
}
