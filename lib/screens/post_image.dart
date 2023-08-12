import 'package:flutter/material.dart';

class PostImageScreen extends StatefulWidget {
  final List images;
  final int clickedImageIndex;
  const PostImageScreen({required this.images, required this.clickedImageIndex, super.key});

  @override
  State<PostImageScreen> createState() => _PostImageScreenState();
}

class _PostImageScreenState extends State<PostImageScreen> {
  int? selectedIndex;

  @override
  void initState() {
    // TODO: implement initState
    selectedIndex = widget.clickedImageIndex;
    super.initState();
  }

  void changeImageIndex(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainImage = SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width,
      child: Image.network(
        widget.images[selectedIndex!]['picture'],
        fit: BoxFit.cover,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Center(child: mainImage),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: ListView.builder(
            itemCount: widget.images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () => changeImageIndex(i),
                child: Container(
                  color: selectedIndex == i ? Colors.orange : Colors.white,
                  margin: const EdgeInsets.all(0.5),
                  padding: const EdgeInsets.all(1.0),
                  width: 60,
                  height: 70,
                  child: Image.network(
                    widget.images[i]['picture'],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
