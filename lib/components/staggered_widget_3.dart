import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gyansansar/models/meta.dart';
import 'package:transparent_image/transparent_image.dart';

import '../screens/post_image.dart';

class StaggeredGridWidget3 extends StatelessWidget {
  final List<Meta>? gridItems;
  const StaggeredGridWidget3({
    required this.gridItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int? girdItemsCount = gridItems!.length - 3;

    Widget countDisplayer = Container(
      width: 1000,
      height: 1000,
      alignment: Alignment.center,
      color: Colors.black38.withOpacity(0.2),
      child: Text(
        girdItemsCount == 0 ? "" : "+ ${girdItemsCount.toString()}",
        style: const TextStyle(color: Colors.white),
      ),
    );

    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1.3,
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PostImageScreen(
                    images: gridItems!,
                    clickedImageIndex: gridItems!.indexOf(gridItems![0])),
              ),
            ),
            child: Container(
                child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(gridItems![0].attachment),
              fit: BoxFit.cover,
            )),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.8,
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PostImageScreen(
                    images: gridItems!,
                    clickedImageIndex: gridItems!.indexOf(gridItems![1])),
              ),
            ),
            child: Container(
                child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(gridItems![1].attachment),
              fit: BoxFit.cover,
            )),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.5,
          child: Stack(children: [
            Container(
              width: 1000,
              height: 1000,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(gridItems![2].attachment),
                fit: BoxFit.cover,
              ),
            ),
            countDisplayer
          ]),
        ),
      ],
    );
  }
}
