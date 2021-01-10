part of 'planet_where_bloc.dart';

@freezed
abstract class PlanetWhereEvent with _$PlanetWhereEvent {
  const factory PlanetWhereEvent.showWhereStarted() = PlanetWhereEventShowWhereStarted;

  const factory PlanetWhereEvent.refreshed() = PlanetWhereEventRefreshed;
}
