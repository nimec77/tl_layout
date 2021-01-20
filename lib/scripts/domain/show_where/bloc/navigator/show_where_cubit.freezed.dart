// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'show_where_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShowWhereStateTearOff {
  const _$ShowWhereStateTearOff();

// ignore: unused_element
  ShowWhereStateInit init() {
    return const ShowWhereStateInit();
  }

// ignore: unused_element
  ShowWhereStatePlanetSelectSuccess planetSelectSuccess(PlanetEnum planetEnum) {
    return ShowWhereStatePlanetSelectSuccess(
      planetEnum,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShowWhereState = _$ShowWhereStateTearOff();

/// @nodoc
mixin _$ShowWhereState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult planetSelectSuccess(PlanetEnum planetEnum),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult planetSelectSuccess(PlanetEnum planetEnum),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(ShowWhereStateInit value),
    @required
        TResult planetSelectSuccess(ShowWhereStatePlanetSelectSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(ShowWhereStateInit value),
    TResult planetSelectSuccess(ShowWhereStatePlanetSelectSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ShowWhereStateCopyWith<$Res> {
  factory $ShowWhereStateCopyWith(
          ShowWhereState value, $Res Function(ShowWhereState) then) =
      _$ShowWhereStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowWhereStateCopyWithImpl<$Res>
    implements $ShowWhereStateCopyWith<$Res> {
  _$ShowWhereStateCopyWithImpl(this._value, this._then);

  final ShowWhereState _value;
  // ignore: unused_field
  final $Res Function(ShowWhereState) _then;
}

/// @nodoc
abstract class $ShowWhereStateInitCopyWith<$Res> {
  factory $ShowWhereStateInitCopyWith(
          ShowWhereStateInit value, $Res Function(ShowWhereStateInit) then) =
      _$ShowWhereStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowWhereStateInitCopyWithImpl<$Res>
    extends _$ShowWhereStateCopyWithImpl<$Res>
    implements $ShowWhereStateInitCopyWith<$Res> {
  _$ShowWhereStateInitCopyWithImpl(
      ShowWhereStateInit _value, $Res Function(ShowWhereStateInit) _then)
      : super(_value, (v) => _then(v as ShowWhereStateInit));

  @override
  ShowWhereStateInit get _value => super._value as ShowWhereStateInit;
}

/// @nodoc
class _$ShowWhereStateInit implements ShowWhereStateInit {
  const _$ShowWhereStateInit();

  @override
  String toString() {
    return 'ShowWhereState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowWhereStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult planetSelectSuccess(PlanetEnum planetEnum),
  }) {
    assert(init != null);
    assert(planetSelectSuccess != null);
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult planetSelectSuccess(PlanetEnum planetEnum),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(ShowWhereStateInit value),
    @required
        TResult planetSelectSuccess(ShowWhereStatePlanetSelectSuccess value),
  }) {
    assert(init != null);
    assert(planetSelectSuccess != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(ShowWhereStateInit value),
    TResult planetSelectSuccess(ShowWhereStatePlanetSelectSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ShowWhereStateInit implements ShowWhereState {
  const factory ShowWhereStateInit() = _$ShowWhereStateInit;
}

/// @nodoc
abstract class $ShowWhereStatePlanetSelectSuccessCopyWith<$Res> {
  factory $ShowWhereStatePlanetSelectSuccessCopyWith(
          ShowWhereStatePlanetSelectSuccess value,
          $Res Function(ShowWhereStatePlanetSelectSuccess) then) =
      _$ShowWhereStatePlanetSelectSuccessCopyWithImpl<$Res>;
  $Res call({PlanetEnum planetEnum});
}

/// @nodoc
class _$ShowWhereStatePlanetSelectSuccessCopyWithImpl<$Res>
    extends _$ShowWhereStateCopyWithImpl<$Res>
    implements $ShowWhereStatePlanetSelectSuccessCopyWith<$Res> {
  _$ShowWhereStatePlanetSelectSuccessCopyWithImpl(
      ShowWhereStatePlanetSelectSuccess _value,
      $Res Function(ShowWhereStatePlanetSelectSuccess) _then)
      : super(_value, (v) => _then(v as ShowWhereStatePlanetSelectSuccess));

  @override
  ShowWhereStatePlanetSelectSuccess get _value =>
      super._value as ShowWhereStatePlanetSelectSuccess;

  @override
  $Res call({
    Object planetEnum = freezed,
  }) {
    return _then(ShowWhereStatePlanetSelectSuccess(
      planetEnum == freezed ? _value.planetEnum : planetEnum as PlanetEnum,
    ));
  }
}

/// @nodoc
class _$ShowWhereStatePlanetSelectSuccess
    implements ShowWhereStatePlanetSelectSuccess {
  const _$ShowWhereStatePlanetSelectSuccess(this.planetEnum)
      : assert(planetEnum != null);

  @override
  final PlanetEnum planetEnum;

  @override
  String toString() {
    return 'ShowWhereState.planetSelectSuccess(planetEnum: $planetEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowWhereStatePlanetSelectSuccess &&
            (identical(other.planetEnum, planetEnum) ||
                const DeepCollectionEquality()
                    .equals(other.planetEnum, planetEnum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(planetEnum);

  @JsonKey(ignore: true)
  @override
  $ShowWhereStatePlanetSelectSuccessCopyWith<ShowWhereStatePlanetSelectSuccess>
      get copyWith => _$ShowWhereStatePlanetSelectSuccessCopyWithImpl<
          ShowWhereStatePlanetSelectSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult planetSelectSuccess(PlanetEnum planetEnum),
  }) {
    assert(init != null);
    assert(planetSelectSuccess != null);
    return planetSelectSuccess(planetEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult planetSelectSuccess(PlanetEnum planetEnum),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (planetSelectSuccess != null) {
      return planetSelectSuccess(planetEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(ShowWhereStateInit value),
    @required
        TResult planetSelectSuccess(ShowWhereStatePlanetSelectSuccess value),
  }) {
    assert(init != null);
    assert(planetSelectSuccess != null);
    return planetSelectSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(ShowWhereStateInit value),
    TResult planetSelectSuccess(ShowWhereStatePlanetSelectSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (planetSelectSuccess != null) {
      return planetSelectSuccess(this);
    }
    return orElse();
  }
}

abstract class ShowWhereStatePlanetSelectSuccess implements ShowWhereState {
  const factory ShowWhereStatePlanetSelectSuccess(PlanetEnum planetEnum) =
      _$ShowWhereStatePlanetSelectSuccess;

  PlanetEnum get planetEnum;
  @JsonKey(ignore: true)
  $ShowWhereStatePlanetSelectSuccessCopyWith<ShowWhereStatePlanetSelectSuccess>
      get copyWith;
}
