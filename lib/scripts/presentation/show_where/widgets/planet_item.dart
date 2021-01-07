import 'package:flutter/material.dart';

class PlanetItem extends StatefulWidget {
  final String image;

  const PlanetItem({Key key, @required this.image})
      : assert(image != null),
        super(key: key);

  @override
  _PlanetItemState createState() => _PlanetItemState();
}

class _PlanetItemState extends State<PlanetItem> {
  double _opacity = 0;
  double _size = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 500),
      () => setState(() {
        _opacity = 1;
        _size = double.infinity;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      opacity: _opacity,
      child: Image.asset(
        widget.image,
      ),
    );
    // return Container(
    //   color: Colors.red,
    //   width: 40,
    //   height: 40,
    //   child: Center(
    //     child: Text(
    //       'Planet ${widget.image}',
    //       style: const TextStyle(color: Colors.white),
    //     ),
    //   ),
    // );
  }
}
