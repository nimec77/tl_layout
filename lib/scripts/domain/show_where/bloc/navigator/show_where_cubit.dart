import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tl_layout/scripts/domain/planet/entities/planet_enum.dart';

part 'show_where_cubit.freezed.dart';
part 'show_where_state.dart';

class ShowWhereCubit extends Cubit<ShowWhereState> {
  ShowWhereCubit() : super(const ShowWhereState.init());

  void select(PlanetEnum planetEnum) {
    emit(ShowWhereState.planetSelectSuccess(planetEnum));
  }
}
