import 'package:flutter/material.dart';

class ScriptButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const ScriptButton({
    Key key,
    @required this.onPressed,
    @required this.title,
  })  : assert(onPressed != null),
        assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Colors.grey,
          onPrimary: Colors.black,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: Theme.of(context).textTheme.headline6),
        ),
      ),
    );
  }
}
