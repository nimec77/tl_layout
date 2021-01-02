import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Неизвестная страница!', style: Theme.of(context).textTheme.headline6),
    );
  }
}
