import 'package:flutter/material.dart';
import 'package:tl_layout/scripts/presentation/core/widgets/script_button.dart';
import 'package:tl_layout/scripts/presentation/show_where/show_where_flow.dart';
import 'package:tl_layout/scripts/presentation/story_on_click/story_flow.dart';

class AppFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Сценарии', style: Theme.of(context).textTheme.headline6),
              const SizedBox(height: 40),
              ScriptButton(
                onPressed: () => Navigator.of(context).push(ShowWhereFlow.route()),
                title: 'Покажи, где...',
              ),
              const SizedBox(height: 40),
              ScriptButton(
                onPressed: () => Navigator.of(context).push(StoryFlow.route()),
                title: 'Рассказ по клику',
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () => Navigator.of(context).push(StoryFlow.route()),
                child: Hero(
                  tag: 'Earth',
                  child: Image.asset(
                    'assets/earth.gif',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
