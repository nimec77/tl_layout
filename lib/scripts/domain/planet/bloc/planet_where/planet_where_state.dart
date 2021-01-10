part of 'planet_where_bloc.dart';

@freezed
abstract class PlanetWhereState with _$PlanetWhereState {
  const factory PlanetWhereState.init() = PlanetWhereStateInit;

  const factory PlanetWhereState.showInProgress({@required RandomIterator randomIterator}) =
      PlanetWhereStateShowInProgress;

  const factory PlanetWhereState.refreshInProgress({
    @required RandomIterator randomIterator,
    @required RandomIterator newRandomIterator,
    @required int refreshTimes,
  }) = PlanetWhereStateRefreshInProgress;
}
