import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/bloc/router_bloc.dart';

import 'widgets/script_button.dart';

class AppWidget extends StatelessWidget {
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
                onPressed: () => context.read<RouterBloc>().add(const RouterEvent.showWherePressed()),
                title: 'Покажи, где...',
              ),
              const SizedBox(height: 40),
              ScriptButton(
                onPressed: () => context.read<RouterBloc>().add(const RouterEvent.storyOnClickPressed()),
                title: 'Рассказ по клику',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
