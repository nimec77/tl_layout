import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/planet/entities/planet_animations.dart';
import 'package:tl_layout/scripts/domain/planet/entities/planet_enum.dart';
import 'package:tl_layout/scripts/domain/show_where/bloc/planet_where/planet_where_bloc.dart';
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
              showInProgress: (state) {
                final planetIndex = state.randomIterator.getByIndex(index);
                return PlanetItem(
                  key: UniqueKey(),
                  planetAnimations: PlanetAnimations.showImage,
                  planetEnum: PlanetEnum.values[planetIndex],
                  image: kPlanetList[planetIndex],
                );
              },
              refreshInProgress: (state) {
                final newPlanetIndex = state.newRandomIterator.getByIndex(index);
                return PlanetItem(
                  key: UniqueKey(),
                  planetAnimations: PlanetAnimations.hideAndShowNew,
                  planetEnum: PlanetEnum.values[newPlanetIndex],
                  image: kPlanetList[state.randomIterator.getByIndex(index)],
                  newImage: kPlanetList[newPlanetIndex],
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
