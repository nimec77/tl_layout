import 'package:flutter/material.dart';

class DefaultPage extends Page {
  final Widget child;

  const DefaultPage({@required this.child}) : assert(child != null);

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => child,
    );
  }
}
