import 'dart:ui' as ui;
import 'package:flutter/material.dart';

List<Positioned> buildSky({ui.Image image, Widget child}) {
  return [
    Positioned.fill(
      child: RawImage(
        image: image,
        repeat: ImageRepeat.repeat,
        colorBlendMode: BlendMode.color,
        color: Colors.black54,
      ),
    ),
    Positioned.fill(child: child),
  ];
}
