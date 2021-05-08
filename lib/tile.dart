import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Tile extends StatelessWidget {
  final text;
  final onPressed;

  static final emptyFunc = (v) => {};

  Tile(String text, {Function(String) onPressed})
      : text = text,
        onPressed = onPressed == null ? emptyFunc : onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(4),
      ),
      margin: EdgeInsets.fromLTRB(4, 4, 4, 4),
      alignment: Alignment.center,
      width: 100,
      height: 100,
      child: ElevatedButton(
          child: Text(text, style: TextStyle(fontSize: 14)),
          onPressed: () => onPressed(text)
      ),
    );
  }
}