import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_navigator_cubit.freezed.dart';
part 'app_navigator_state.dart';

class AppNavigatorCubit extends Cubit<AppNavigatorState> {
  AppNavigatorCubit() : super(const AppNavigatorState.init());

  void main() {
    emit(const AppNavigatorState.init());
  }

  void showWhere() {
    emit(const AppNavigatorState.showWhereFlow());
  }

  void story() {
    emit(const AppNavigatorState.storyFlow());
  }
}
