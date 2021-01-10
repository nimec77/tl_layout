import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/planet/bloc/planet_where/planet_where_bloc.dart';
import 'package:tl_layout/scripts/domain/planet/entities/planet_animations.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';
import 'package:tl_layout/scripts/presentation/show_where/widgets/planet_item.dart';

class PlanetsGrid extends StatelessWidget {
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
        return BlocBuilder<PlanetWhereBloc, PlanetWhereState>(
          builder: (context, state) {
            if (state == const PlanetWhereState.init()) {
              return Container();
            }
            return state.maybeMap(
              showInProgress: (state) => PlanetItem(
                key: ValueKey('showInProgress$index'),
                planetAnimations: PlanetAnimations.showImage,
                image: kPlanetList[state.randomIterator.getByIndex(index)],
              ),
              refreshInProgress: (state) {
                return PlanetItem(
                  key: ValueKey('refreshInProgress$index-${state.refreshTimes}'),
                  planetAnimations: PlanetAnimations.hideAndShowNew,
                  image: kPlanetList[state.randomIterator.getByIndex(index)],
                  newImage: kPlanetList[state.newRandomIterator.getByIndex(index)],
                );
              },
              orElse: () => Container(),
            );
          },
        );
      },
    );
  }
}
