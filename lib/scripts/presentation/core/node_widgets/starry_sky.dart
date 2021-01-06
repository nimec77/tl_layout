import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/presentation/core/node_widgets/stars_node.dart';

class StarrySky extends NodeWithSize {
  final SpriteSheet spriteSheet;

  StarrySky({@required Size size, @required this.spriteSheet})
      : assert(size != null),
        assert(spriteSheet != null),
        super(size) {
    final starNode = StarsNode(size: size, spriteSheet: spriteSheet);
    addChild(starNode);
  }
}
