import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:spritewidget/spritewidget.dart';

import '../../constants.dart';

class StarsNode extends Node {
  final Size size;
  final SpriteSheet spriteSheet;

  StarsNode({@required this.size, @required this.spriteSheet})
      : assert(size != null),
        assert(spriteSheet != null) {
    _addParticles(spriteSheet['star_0.png']);
    _addParticles(spriteSheet['star_1.png']);
    _addParticles(spriteSheet['star_2.png']);
    _addParticles(spriteSheet['star_3.png'], 0.1, 0.1, 0.2);
  }

  void _addParticles(SpriteTexture texture,
      [double startSize = 0.2, double startSizeVar = 0.2, double endSize = 0.3, double endSizeVar = 0.2]) {
    final particles = ParticleSystem(
      texture,
      life: kNumStarts.toDouble(),
      lifeVar: (kNumStarts - 10).toDouble(),
      posVar: Offset(size.width, size.height),
      startSize: startSize,
      startSizeVar: startSizeVar,
      endSize: endSize,
      endSizeVar: endSizeVar,
      startRotationVar: 360,
      endRotationVar: 360,
      speed: 0,
      speedVar: 1.5,
      maxParticles: kNumStarts ~/ 1.7,
      emissionRate: kNumStarts / 1.7,
      alphaVar: 255,
      gravity: Offset.zero,
    );

    addChild(particles);
  }
}
