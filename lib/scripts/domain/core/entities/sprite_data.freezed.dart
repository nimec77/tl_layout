// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sprite_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SpriteDataTearOff {
  const _$SpriteDataTearOff();

// ignore: unused_element
  _SpriteData call(
      {@required ImageMap imageMap, @required SpriteSheet spriteSheet}) {
    return _SpriteData(
      imageMap: imageMap,
      spriteSheet: spriteSheet,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SpriteData = _$SpriteDataTearOff();

/// @nodoc
mixin _$SpriteData {
  ImageMap get imageMap;
  SpriteSheet get spriteSheet;

  @JsonKey(ignore: true)
  $SpriteDataCopyWith<SpriteData> get copyWith;
}

/// @nodoc
abstract class $SpriteDataCopyWith<$Res> {
  factory $SpriteDataCopyWith(
          SpriteData value, $Res Function(SpriteData) then) =
      _$SpriteDataCopyWithImpl<$Res>;
  $Res call({ImageMap imageMap, SpriteSheet spriteSheet});
}

/// @nodoc
class _$SpriteDataCopyWithImpl<$Res> implements $SpriteDataCopyWith<$Res> {
  _$SpriteDataCopyWithImpl(this._value, this._then);

  final SpriteData _value;
  // ignore: unused_field
  final $Res Function(SpriteData) _then;

  @override
  $Res call({
    Object imageMap = freezed,
    Object spriteSheet = freezed,
  }) {
    return _then(_value.copyWith(
      imageMap: imageMap == freezed ? _value.imageMap : imageMap as ImageMap,
      spriteSheet: spriteSheet == freezed
          ? _value.spriteSheet
          : spriteSheet as SpriteSheet,
    ));
  }
}

/// @nodoc
abstract class _$SpriteDataCopyWith<$Res> implements $SpriteDataCopyWith<$Res> {
  factory _$SpriteDataCopyWith(
          _SpriteData value, $Res Function(_SpriteData) then) =
      __$SpriteDataCopyWithImpl<$Res>;
  @override
  $Res call({ImageMap imageMap, SpriteSheet spriteSheet});
}

/// @nodoc
class __$SpriteDataCopyWithImpl<$Res> extends _$SpriteDataCopyWithImpl<$Res>
    implements _$SpriteDataCopyWith<$Res> {
  __$SpriteDataCopyWithImpl(
      _SpriteData _value, $Res Function(_SpriteData) _then)
      : super(_value, (v) => _then(v as _SpriteData));

  @override
  _SpriteData get _value => super._value as _SpriteData;

  @override
  $Res call({
    Object imageMap = freezed,
    Object spriteSheet = freezed,
  }) {
    return _then(_SpriteData(
      imageMap: imageMap == freezed ? _value.imageMap : imageMap as ImageMap,
      spriteSheet: spriteSheet == freezed
          ? _value.spriteSheet
          : spriteSheet as SpriteSheet,
    ));
  }
}

/// @nodoc
class _$_SpriteData with DiagnosticableTreeMixin implements _SpriteData {
  const _$_SpriteData({@required this.imageMap, @required this.spriteSheet})
      : assert(imageMap != null),
        assert(spriteSheet != null);

  @override
  final ImageMap imageMap;
  @override
  final SpriteSheet spriteSheet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpriteData(imageMap: $imageMap, spriteSheet: $spriteSheet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpriteData'))
      ..add(DiagnosticsProperty('imageMap', imageMap))
      ..add(DiagnosticsProperty('spriteSheet', spriteSheet));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpriteData &&
            (identical(other.imageMap, imageMap) ||
                const DeepCollectionEquality()
                    .equals(other.imageMap, imageMap)) &&
            (identical(other.spriteSheet, spriteSheet) ||
                const DeepCollectionEquality()
                    .equals(other.spriteSheet, spriteSheet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageMap) ^
      const DeepCollectionEquality().hash(spriteSheet);

  @JsonKey(ignore: true)
  @override
  _$SpriteDataCopyWith<_SpriteData> get copyWith =>
      __$SpriteDataCopyWithImpl<_SpriteData>(this, _$identity);
}

abstract class _SpriteData implements SpriteData {
  const factory _SpriteData(
      {@required ImageMap imageMap,
      @required SpriteSheet spriteSheet}) = _$_SpriteData;

  @override
  ImageMap get imageMap;
  @override
  SpriteSheet get spriteSheet;
  @override
  @JsonKey(ignore: true)
  _$SpriteDataCopyWith<_SpriteData> get copyWith;
}
