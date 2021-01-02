import 'package:flutter/material.dart';
import 'package:tl_layout/scripts/domain/core/sprite_data.dart';

@immutable
class SpriteInheritedWidget extends InheritedWidget {
  final SpriteData spriteData;

  const SpriteInheritedWidget({Key key, @required Widget child, @required this.spriteData})
      : assert(child != null),
        assert(spriteData != null),
        super(key: key, child: child);

  static SpriteData of(BuildContext context, {bool listen = false}) {
    if (listen ?? false) {
      return context.dependOnInheritedWidgetOfExactType<SpriteInheritedWidget>()?.spriteData;
    } else {
      final inheritedWidget = context.getElementForInheritedWidgetOfExactType<SpriteInheritedWidget>()?.widget;
      return inheritedWidget is SpriteInheritedWidget ? inheritedWidget?.spriteData : null;
    }
  }

  @override
  bool updateShouldNotify(SpriteInheritedWidget oldWidget) => spriteData != oldWidget.spriteData;
}
