import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';
import 'package:tl_layout/scripts/presentation/core/contexts/sprite_inherited_widget.dart';
import 'package:tl_layout/scripts/presentation/core/node_widgets/star_field.dart';

class ShowWhere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final spriteSheet = SpriteInheritedWidget.of(context).spriteSheet;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Планеты солнечной системы'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              kStarField,
              // fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
            ),
          ),
          SpriteWidget(StarField(size: size, spriteSheet: spriteSheet)),
          Center(
              child: Text(
            'Покажи, где...',
            style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
          )),
        ],
      ),
    );
  }
}
