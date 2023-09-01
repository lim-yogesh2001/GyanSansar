import 'package:flutter/material.dart';
import '../components/syllabus_title_nd_items.dart';

class SyllabusScreen extends StatelessWidget {
  const SyllabusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Syllabus"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SyllabustTitleNdItems(title: "BCA (Tribhuvan University)")
            ],
          ),
        ),
      ),
    );
  }
}
