part of 'app_router_cubit.dart';

@freezed
abstract class AppRouterState with _$AppRouterState {
  const factory AppRouterState.init() = AppRouterStateInit;

  const factory AppRouterState.showWhere() = AppRouterStateShowWhere;

  const factory AppRouterState.showStoryOnClick() = AppRouterStateShowStoryOnClick;
}
