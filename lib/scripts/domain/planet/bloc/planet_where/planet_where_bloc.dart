import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:tl_layout/scripts/domain/core/bloc/router/router_bloc.dart';
import 'package:tl_layout/scripts/domain/helpers/random_iterator.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';

part 'planet_where_bloc.freezed.dart';

part 'planet_where_event.dart';

part 'planet_where_state.dart';

class PlanetWhereBloc extends Bloc<PlanetWhereEvent, PlanetWhereState> {
  final RouterBloc routerBloc;
  RandomIterator _randomIterator;
  RandomIterator _newRandomIterator;
  StreamSubscription _routerBlocSubscription;
  int _refreshTimes = 0;

  PlanetWhereBloc({@required this.routerBloc}) : super(const PlanetWhereState.init()) {
    if (routerBloc.state == const RouterState.showWhere()) {
      add(const PlanetWhereEvent.showWhereStarted());
    }
    _routerBlocSubscription = routerBloc.listen((state) {
      state.maybeWhen(
        showWhere: () => add(const PlanetWhereEvent.showWhereStarted()),
        orElse: () => null,
      );
    });
  }

  @override
  Future<void> close() {
    _routerBlocSubscription?.cancel();
    return super.close();
  }

  @override
  Stream<PlanetWhereState> mapEventToState(PlanetWhereEvent event) => event.when(
        showWhereStarted: _showWhereStartedToState,
        refreshed: _refreshedToState,
      );

  Stream<PlanetWhereState> _showWhereStartedToState() async* {
    _randomIterator = RandomIterator(kPlanetList.length, 6, 5);
    _newRandomIterator = null;
    yield PlanetWhereState.showInProgress(randomIterator: _randomIterator);
  }

  Stream<PlanetWhereState> _refreshedToState() async* {
    if (_newRandomIterator != null) {
      _randomIterator = _newRandomIterator;
    }
    _newRandomIterator = RandomIterator(kPlanetList.length, 6, 5);
    yield PlanetWhereState.refreshInProgress(
        randomIterator: _randomIterator, newRandomIterator: _newRandomIterator, refreshTimes: _refreshTimes++);
  }
}
