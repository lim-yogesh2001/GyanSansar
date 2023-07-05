import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridWidget3 extends StatelessWidget {
  final List gridItems;
  const StaggeredGridWidget3({
    required this.gridItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1.3,
          child: Container(
            child: Image.network(
              gridItems[0],
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.8,
          child:  Container(
              child: Image.network(
                gridItems[1],
                fit: BoxFit.cover,
              ),
            ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 0.5,
          child: Stack(children: [
             Container(
              width: 1000,
              height: 1000,
              child: Image.network(
                gridItems[2],
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 1000,
              height: 1000,
              alignment: Alignment.center,
              color: Colors.black38.withOpacity(0.2),
              child: const Text("+3", style: TextStyle(color: Colors.white),),
            ),
           
          ]),
        )
      ],
    );
  }
}
