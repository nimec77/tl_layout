import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/show_where/bloc/navigator/show_where_cubit.dart';

import 'show_where.dart';

class ShowWhereFlow extends StatelessWidget {
  static Route<ShowWhereState> route() {
    return MaterialPageRoute(
      builder: (_) => BlocProvider(
        create: (_) => ShowWhereCubit(),
        child: ShowWhereFlow(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<ShowWhereState>(
      state: context.select<ShowWhereCubit, ShowWhereState>((cubit) => cubit.state),
      onGeneratePages: (state, pages) => state.map(
        init: (_) => [ShowWhere.page()],
      ),
    );
  }
}
