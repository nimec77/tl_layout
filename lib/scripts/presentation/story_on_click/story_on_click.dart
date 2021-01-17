import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/presentation/core/contexts/sprite_inherited_widget.dart';
import 'package:tl_layout/scripts/presentation/core/node_widgets/starry_sky.dart';
import 'package:tl_layout/scripts/presentation/core/widgets/build_sky.dart';

import '../constants.dart';

class StoryOnClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spriteData = SpriteInheritedWidget.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Планеты солнечной системы'),
      ),
      body: Stack(
        children: [
          ...buildSky(
            image: spriteData.imageMap[kStarField],
            child: SpriteWidget(StarrySky(size: size, spriteSheet: spriteData.spriteSheet)),
          ),
          Center(
            child: Hero(
              tag: 'Earth',
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/earth.gif',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
