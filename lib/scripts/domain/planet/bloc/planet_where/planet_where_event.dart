part of 'planet_where_bloc.dart';

@freezed
abstract class PlanetWhereEvent with _$PlanetWhereEvent {
  const factory PlanetWhereEvent.showWhereStarted() = PlanetWhereStarted;

  const factory PlanetWhereEvent.refreshed() = PlanetWhereRefreshed;
}
