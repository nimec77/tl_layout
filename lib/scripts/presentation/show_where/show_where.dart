import 'package:flutter/material.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/domain/core/sprite_data.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';
import 'package:tl_layout/scripts/presentation/core/contexts/sprite_inherited_widget.dart';
import 'package:tl_layout/scripts/presentation/core/node_widgets/star_field.dart';
import 'package:tl_layout/scripts/presentation/core/node_widgets/starry_sky.dart';
import 'package:tl_layout/scripts/presentation/core/widgets/build_sky.dart';
import 'package:tl_layout/scripts/presentation/show_where/widgets/planets_grid.dart';

class ShowWhere extends StatefulWidget {
  @override
  _ShowWhereState createState() => _ShowWhereState();
}

class _ShowWhereState extends State<ShowWhere> {
  SpriteData _spriteData;
  bool _isDynamicStarts = false;

  @override
  void initState() {
    super.initState();
    _spriteData = SpriteInheritedWidget.of(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Планеты солнечной системы'),
      ),
      body: Stack(
        children: [
          ...buildSky(
            image: _spriteData.imageMap[kStarField],
            child: SpriteWidget(_isDynamicStarts
                ? StarrySky(size: size, spriteSheet: _spriteData.spriteSheet)
                : StarField(size: size, spriteSheet: _spriteData.spriteSheet)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PlanetsGrid(),
              ),
              SizedBox(
                width: 265,
                child: CheckboxListTile(
                  title: const Text('Динамические звезды', style: TextStyle(color: Colors.white)),
                  value: _isDynamicStarts,
                  onChanged: (value) => setState(() {
                    _isDynamicStarts = value;
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
