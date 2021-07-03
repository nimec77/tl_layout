import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/core/bloc/navigator/app_navigator_cubit.dart';
import 'package:tl_layout/scripts/presentation/core/widgets/script_button.dart';

class AppFlow extends StatelessWidget {
  static Page page() => MaterialPage<void>(
        child: AppFlow(),
      );

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
                // onPressed: () => Navigator.of(context).push(ShowWhereFlow.route()),
                onPressed: () => context.read<AppNavigatorCubit>().showWhere(),
                title: 'Покажи, где...',
              ),
              const SizedBox(height: 40),
              ScriptButton(
                // onPressed: () => Navigator.of(context).push(StoryFlow.route()),
                onPressed: () => context.read<AppNavigatorCubit>().story(),
                title: 'Рассказ по клику',
              ),
              const SizedBox(height: 40),
              GestureDetector(
                // onTap: () => Navigator.of(context).push(StoryFlow.route()),
                onTap: () => context.read<AppNavigatorCubit>().story(),
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
