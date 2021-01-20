import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_where_cubit.freezed.dart';
part 'show_where_state.dart';

class ShowWhereCubit extends Cubit<ShowWhereState> {
  ShowWhereCubit() : super(const ShowWhereState.init());
}
