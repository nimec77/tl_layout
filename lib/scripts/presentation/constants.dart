import 'package:flutter/material.dart';

final kLayoutTheme = ThemeData.light().copyWith(
  // scaffoldBackgroundColor: Colors.black,
  accentColor: Colors.deepPurple,
  appBarTheme: const AppBarTheme().copyWith(
    color: Colors.deepPurple,
  ),
  checkboxTheme: const CheckboxThemeData().copyWith(
    fillColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
  ),
);

const kStarField = 'assets/starfield.png';
const kSpriteSheet = 'assets/sprites.png';
const kSpriteJson = 'assets/sprites.json';
const kNumStarts = 500;
const kPlanetList = [
  'assets/mercury.gif',
  'assets/venus.gif',
  'assets/earth.gif',
  'assets/mars.gif',
  'assets/jupiter.gif',
  'assets/saturn.gif',
  'assets/uranus.gif',
  'assets/neptune.gif',
];
