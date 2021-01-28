import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/domain/planet/entities/planet_enum.dart';
import 'package:tl_layout/scripts/domain/show_where/bloc/navigator/show_where_cubit.dart';
import 'package:tl_layout/scripts/presentation/core/contexts/sprite_inherited_widget.dart';
import 'package:tl_layout/scripts/presentation/core/node_widgets/starry_sky.dart';
import 'package:tl_layout/scripts/presentation/core/widgets/build_sky.dart';

import '../../constants.dart';

class PlanetPage extends StatelessWidget {
  final PlanetEnum planetEnum;

  const PlanetPage({Key key, @required this.planetEnum})
      : assert(planetEnum != null),
        super(key: key);

  static Page page(PlanetEnum planetEnum) => MaterialPage<void>(
        child: PlanetPage(planetEnum: planetEnum),
      );

  @override
  Widget build(BuildContext context) {
    final spriteData = SpriteInheritedWidget.of(context);
    final size = MediaQuery.of(context).size;
    final image = kPlanetList[planetEnum.index];
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.read<ShowWhereCubit>().back()),
        title: const Text('Планеты солнечной системы'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () => context.flow<ShowWhereState>().complete(),
          ),
        ],
      ),
      body: Stack(
        children: [
          ...buildSky(
            image: spriteData.imageMap[kStarField],
            child: SpriteWidget(StarrySky(size: size, spriteSheet: spriteData.spriteSheet)),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Hero(
                    tag: planetEnum,
                    child: Image.asset(
                      image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Text(
                  'Планета'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Узнать ещё',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
