import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'app_router_cubit.freezed.dart';
part 'app_router_state.dart';

class AppRouterCubit extends Cubit<AppRouterState> {
  AppRouterCubit() : super(const AppRouterState.init());
}
