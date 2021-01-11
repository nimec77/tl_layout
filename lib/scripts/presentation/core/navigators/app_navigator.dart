import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/core/bloc/router/router_bloc.dart';
import 'package:tl_layout/scripts/domain/planet/bloc/planet_where/planet_where_bloc.dart';
import 'package:tl_layout/scripts/presentation/core/navigators/default_page.dart';
import 'package:tl_layout/scripts/presentation/core/pages/unknown_page.dart';
import 'package:tl_layout/scripts/presentation/show_where/show_where.dart';
import 'package:tl_layout/scripts/presentation/story_on_click/story_on_click.dart';

import '../app_widget.dart';

class AppNavigator extends StatelessWidget {
  final heroController = HeroController();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RouterBloc>().state;
    return BlocProvider<PlanetWhereBloc>(
      create: (context) => PlanetWhereBloc(routerBloc: context.read<RouterBloc>()),
      child: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('MainPage'),
            child: AppWidget(),
          ),
          if (state != const RouterState.init())
            state.map(
              init: (_) => DefaultPage(child: UnknownPage()),
              showWhere: (_) => DefaultPage(child: ShowWhere()),
              showStoryOnClick: (_) => DefaultPage(child: StoryOnClick()),
            )
        ],
        onPopPage: (route, result) {
          context.read<RouterBloc>().add(const RouterEvent.returnedToMain());
          if (!route.didPop(result)) {
            return false;
          }
          return true;
        },
        observers: [heroController],
      ),
    );
  }
}

abstract class TestRoutePath {}
