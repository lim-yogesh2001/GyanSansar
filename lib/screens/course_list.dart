import 'package:flutter/material.dart';
import '../components/course_title_nd_items.dart';

class CourseListScreen extends StatelessWidget {
  const CourseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Courses List",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitleAndItems(
                title: "BCA Tribhuvan University",
              ),
              CustomTitleAndItems(
                title: "BSc CSIT",
              )
            ],
          ),
        ),
      ),
    );
  }
}
