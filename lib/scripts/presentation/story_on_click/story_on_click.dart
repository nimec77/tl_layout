import 'package:flutter/material.dart';

class StoryOnClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Планеты солнечной системы'),
      ),
      body: Center(
        child: Text('Рассказ по клику', style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
