import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/domain/show_where/bloc/navigator/show_where_cubit.dart';
import 'package:tl_layout/scripts/domain/show_where/bloc/planet_where/planet_where_bloc.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';
import 'package:tl_layout/scripts/presentation/core/contexts/sprite_inherited_widget.dart';
import 'package:tl_layout/scripts/presentation/core/node_widgets/star_field.dart';
import 'package:tl_layout/scripts/presentation/core/widgets/build_sky.dart';
import 'package:tl_layout/scripts/presentation/show_where/widgets/planets_grid.dart';

class ShowWhere extends StatelessWidget {
  static Page page() => MaterialPage<void>(
        child: BlocProvider(
          create: (_) => PlanetWhereBloc()..add(const PlanetWhereEvent.showWhereStarted()),
          child: ShowWhere(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final spriteData = SpriteInheritedWidget.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          context.flow<ShowWhereState>().complete();
        }),
        title: const Text('Планеты солнечной системы'),
      ),
      body: Stack(
        children: [
          ...buildSky(
            image: spriteData.imageMap[kStarField],
            child: SpriteWidget(StarField(size: size, spriteSheet: spriteData.spriteSheet)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PlanetsGrid(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    color: Theme.of(context).colorScheme.secondary,
                    iconSize: 40,
                    onPressed: () => context.read<PlanetWhereBloc>().add(const PlanetWhereEvent.refreshed()),
                  ),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    displayFullTextOnTap: true,
                    pause: const Duration(milliseconds: 300),
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Покажи где',
                        speed: const Duration(milliseconds: 200),
                        textStyle: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
                      ),
                      TypewriterAnimatedText(
                        'Сатурн?',
                        speed: const Duration(milliseconds: 200),
                        textStyle: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
