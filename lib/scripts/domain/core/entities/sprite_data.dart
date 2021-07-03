import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spritewidget/spritewidget.dart';

part 'sprite_data.freezed.dart';

@freezed
abstract class SpriteData with _$SpriteData {
  const factory SpriteData({
    @required ImageMap imageMap,
    @required SpriteSheet spriteSheet,
  }) = _SpriteData;
}
