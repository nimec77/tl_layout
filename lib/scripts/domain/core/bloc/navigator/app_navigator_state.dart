part of 'app_navigator_cubit.dart';

@freezed
abstract class AppNavigatorState with _$AppNavigatorState {
  const factory AppNavigatorState.init() = AppNavigatorStateInit;

  const factory AppNavigatorState.showWhereFlow() = AppNavigatorStateShowWhereFlow;

  const factory AppNavigatorState.storyFlow() = AppNavigatorStateStoryFlow;
}
