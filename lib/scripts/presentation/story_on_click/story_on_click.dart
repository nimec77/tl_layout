import 'package:flutter/material.dart';

class StoryOnClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Планеты солнечной системы'),
      ),
      body: Center(
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
    );
  }
}
