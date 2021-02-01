import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spritewidget/spritewidget.dart';
import 'package:tl_layout/scripts/domain/core/bloc/simple_bloc_observer.dart';
import 'package:tl_layout/scripts/domain/core/entities/sprite_data.dart';
import 'package:tl_layout/scripts/presentation/constants.dart';
import 'package:tl_layout/scripts/presentation/core/contexts/sprite_inherited_widget.dart';

import 'scripts/presentation/core/flows/app_flow.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  final imageMap = ImageMap(rootBundle);
  await imageMap.load([
    kStarField,
    kSpriteSheet,
  ]);
  final json = await rootBundle.loadString(kSpriteJson);
  final spriteSheet = SpriteSheet(imageMap[kSpriteSheet], json);
  runApp(LayoutApp(spriteData: SpriteData(imageMap: imageMap, spriteSheet: spriteSheet)));
}

class LayoutApp extends StatelessWidget {
  final SpriteData spriteData;

  const LayoutApp({Key key, @required this.spriteData})
      : assert(spriteData != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpriteInheritedWidget(
      spriteData: spriteData,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Talking Lesson Planets',
        theme: kLayoutTheme,
        home: AppFlow(),
      ),
    );
  }
}
