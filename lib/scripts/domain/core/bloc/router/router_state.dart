part of 'router_bloc.dart';

@freezed
abstract class RouterState with _$RouterState {
  const factory RouterState.init() = Init;

  const factory RouterState.showWhere() = RouterStateShowWhere;

  const factory RouterState.showStoryOnClick() = RouterStateShowStoryOnClick;
}
