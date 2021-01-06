import 'package:flutter/material.dart';

final kLayoutTheme = ThemeData.light().copyWith(
  // scaffoldBackgroundColor: Colors.black,
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
const kStarColors = [
  Color(0xff4becff),
  Color(0xff33e5ff),
  Color(0xff8330ff),
];
