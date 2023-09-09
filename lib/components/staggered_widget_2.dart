import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gyansansar/models/meta.dart';
import 'package:gyansansar/screens/post_image.dart';
import 'package:transparent_image/transparent_image.dart';

class StaggeredGridWidget2 extends StatelessWidget {
  final List<Meta> gridItems;
  const StaggeredGridWidget2({
    required this.gridItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> renderGridTiles = gridItems
        .map((value) => StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.3,
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PostImageScreen(
                        images: gridItems,
                        clickedImageIndex: gridItems.indexOf(value))),
              ),
              child: Container(
                  child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(value.attachment),
                fit: BoxFit.cover,
              )),
            )))
        .toList();

    return StaggeredGrid.count(
        crossAxisCount: 2, crossAxisSpacing: 3.0, children: renderGridTiles);
  }
}
