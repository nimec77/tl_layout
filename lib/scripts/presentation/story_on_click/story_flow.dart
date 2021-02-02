import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/core/bloc/navigator/app_navigator_cubit.dart';
import 'package:tl_layout/scripts/presentation/story_on_click/story_on_click.dart';

enum StoryStates { initState }

List<Page> onGenerateStoryPages(StoryStates sate, List<Page> pages) {
  return [
    MaterialPage<void>(child: StoryOnClick()),
  ];
}

class StoryFlow extends StatelessWidget {
  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => StoryFlow());
  }

  static Page page() => MaterialPage<void>(
        child: StoryFlow(),
      );

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<StoryStates>(
      state: StoryStates.initState,
      onGeneratePages: onGenerateStoryPages,
      onComplete: (state) => context.read<AppNavigatorCubit>().main(),
    );
  }
}
