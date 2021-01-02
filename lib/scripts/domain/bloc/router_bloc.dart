import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_event.dart';

part 'router_state.dart';

part 'router_bloc.freezed.dart';

class RouterBloc extends Bloc<RouterEvent, RouterState> {
  RouterBloc() : super(const RouterState.init());

  @override
  Stream<RouterState> mapEventToState(RouterEvent event) => event.when(
        returnedToMain: _returnedToMainToState,
        showWherePressed: _showPressedToState,
        storyOnClickPressed: _storyOnClickPressedToState,
      );

  Stream<RouterState> _returnedToMainToState() async* {
    yield const RouterState.init();
  }

  Stream<RouterState> _showPressedToState() async* {
    yield const RouterState.showWhere();
  }

  Stream<RouterState> _storyOnClickPressedToState() async* {
    yield const RouterState.showStoryOnClick();
  }
}
