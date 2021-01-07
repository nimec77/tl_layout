import 'package:flutter/material.dart';
import 'package:tl_layout/scripts/domain/helpers/random_iterator.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';
import 'package:tl_layout/scripts/presentation/show_where/widgets/planet_item.dart';

class PlanetsGrid extends StatelessWidget {
  final randomIterator = RandomIterator(kPlanetList.length);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final itemHeight = size.height / 2;
    final itemWidth = size.width;
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: 6,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: itemHeight / itemWidth,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return PlanetItem(image: kPlanetList[randomIterator.getByIndex(index)]);
      },
    );
  }
}
