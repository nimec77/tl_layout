part of 'show_where_cubit.dart';

@freezed
abstract class ShowWhereState with _$ShowWhereState {
  const factory ShowWhereState.init() = ShowWhereStateInit;

  const factory ShowWhereState.planetSelectSuccess(PlanetEnum planetEnum) = ShowWhereStatePlanetSelectSuccess;
}
