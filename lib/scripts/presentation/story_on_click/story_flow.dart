import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return const FlowBuilder<StoryStates>(
      state: StoryStates.initState,
      onGeneratePages: onGenerateStoryPages,
    );
  }
}
