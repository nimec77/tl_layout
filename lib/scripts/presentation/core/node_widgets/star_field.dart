import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';

class StarField extends NodeWithSize {
  final SpriteSheet spriteSheet;
  final int numStarts;
  final ui.Image _image;

  final _starPaint = Paint()
    ..filterQuality = ui.FilterQuality.low
    ..isAntiAlias = false
    ..blendMode = ui.BlendMode.plus;
  final _padding = 50.0;

  List<Offset> _startPosition;
  List<double> _startScales;
  List<Color> _colors;
  List<Rect> _rects;

  StarField({@required Size size, @required this.spriteSheet, this.numStarts = kNumStarts})
      : assert(spriteSheet != null),
        _image = spriteSheet.image,
        super(size);

  @override
  void spriteBoxPerformedLayout() {
    _addStarts();
  }

  void _addStarts() {
    _startPosition = [];
    _startScales = [];
    _colors = [];
    _rects = [];

    final paddingSize = Size(size.width + _padding * 2, size.height + _padding * 2);

    for (int i = 0; i < numStarts; i++) {
      _startPosition.add(Offset(randomDouble() * paddingSize.width, randomDouble() * paddingSize.height));
      _startScales.add(randomDouble() * 0.4);
      _colors.add(Color.fromARGB((255 * (randomDouble() * 0.5 + 0.5)).toInt(), 255, 255, 255));
      _rects.add(spriteSheet['star_${randomInt(3)}.png'].frame);
    }
  }

  @override
  void paint(Canvas canvas) {
    final List<RSTransform> transforms = [];

    for (int i = 0; i < numStarts; i++) {
      final transform =
          RSTransform(_startScales[i], 0.0, _startPosition[i].dx - _padding, _startPosition[i].dy - _padding);
      transforms.add(transform);
    }

    canvas.drawAtlas(_image, transforms, _rects, _colors, BlendMode.modulate, null, _starPaint);
  }
}
