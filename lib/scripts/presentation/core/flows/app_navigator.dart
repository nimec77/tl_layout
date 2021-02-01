import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/core/bloc/navigator/app_navigator_cubit.dart';
import 'package:tl_layout/scripts/presentation/core/flows/app_flow.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlowBuilder<AppNavigatorState>(
        state: context.select<AppNavigatorCubit, AppNavigatorState>((cubit) => cubit.state),
        onGeneratePages: (state, pages) {
          return [
            MaterialPage(child: AppFlow()),
            // if (state is AppNavigatorStateShowWhereFlow)
          ];
        },
      ),
    );
  }
}
