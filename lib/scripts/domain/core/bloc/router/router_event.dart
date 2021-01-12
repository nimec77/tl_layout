part of 'router_bloc.dart';

@freezed
abstract class RouterEvent with _$RouterEvent {
  const factory RouterEvent.returnedToMain() = ReturnedToMain;

  const factory RouterEvent.showWherePressed() = RouterShowWherePressed;

  const factory RouterEvent.storyOnClickPressed() = RouterStoryOnClickPressed;
}
