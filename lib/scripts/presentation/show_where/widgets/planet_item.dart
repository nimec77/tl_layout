import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tl_layout/scripts/domain/planet/entities/planet_animations.dart';
import 'package:tl_layout/scripts/domain/planet/entities/planet_enum.dart';
import 'package:tl_layout/scripts/domain/show_where/bloc/navigator/show_where_cubit.dart';

class PlanetItem extends StatefulWidget {
  final PlanetAnimations planetAnimations;
  final PlanetEnum planetEnum;
  final String image;
  final String newImage;

  const PlanetItem(
      {Key key, @required this.planetEnum, @required this.planetAnimations, @required this.image, this.newImage})
      : assert(planetAnimations != null),
        assert(planetEnum != null),
        assert(image != null),
        super(key: key);

  @override
  _PlanetItemState createState() => _PlanetItemState();
}

class _PlanetItemState extends State<PlanetItem> with SingleTickerProviderStateMixin {
  String _image;
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _image = widget.image;
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    if (widget.planetAnimations == PlanetAnimations.showImage) {
      _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.fastOutSlowIn,
      );
    } else if (widget.planetAnimations == PlanetAnimations.hideAndShowNew) {
      final curve = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
      _animation = Tween<double>(begin: 1, end: 0).animate(curve);
      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _image = widget.newImage;
            _controller.reverse();
          });
        }
      });
    }
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: GestureDetector(
        onTap: () => context.read<ShowWhereCubit>().select(widget.planetEnum),
        child: Hero(
          tag: widget.planetEnum,
          child: Image.asset(
            _image,
            key: ValueKey(_image),
          ),
        ),
      ),
    );
  }
}
