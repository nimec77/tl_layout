part of 'router_bloc.dart';

@freezed
abstract class RouterEvent with _$RouterEvent {
  const factory RouterEvent.returnedToMain() = _ReturnedToMain;

  const factory RouterEvent.showWherePressed() = _ShowWherePressed;

  const factory RouterEvent.storyOnClickPressed() = _StoryOnClickPressed;
}
