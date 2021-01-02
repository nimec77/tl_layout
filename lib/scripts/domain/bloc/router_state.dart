part of 'router_bloc.dart';

// @immutable
// abstract class RouterState {}
//
// @immutable
// class RouterStateInit extends RouterState {}
//
// @immutable
// class RouterStateShowWhere extends RouterState {}
//
// @immutable
// class RouterStateShowStoryOnClick extends RouterState {}

@freezed
abstract class RouterState with _$RouterState {
  const factory RouterState.init() = _Init;

  const factory RouterState.showWhere() = _ShowWhere;

  const factory RouterState.showStoryOnClick() = _ShowStoryOnClick;
}
