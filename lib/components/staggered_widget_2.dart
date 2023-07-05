import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridWidget2 extends StatelessWidget {
  final List gridItems;
  const StaggeredGridWidget2({
    required this.gridItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> renderGridTile = gridItems
        .map((value) => StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.3,
            child: Container(
              child: Image.network(value, fit: BoxFit.cover),
            )))
        .toList();

    return StaggeredGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 3.0,
      children: renderGridTile
    );
  }
}
