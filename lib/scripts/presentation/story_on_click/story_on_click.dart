import 'package:flutter/material.dart';

class StoryOnClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Планеты солнечной системы'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text('Рассказ по клику', style: Theme.of(context).textTheme.headline6),
              const SizedBox(height: 30),
              Expanded(
                child: Hero(
                  tag: 'Earth',
                  child: Image.asset('assets/earth.gif', fit: BoxFit.fitWidth),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
