import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_lab2/textlist.dart';
import 'package:mobile_lab2/tile.dart';

void main() {
  runApp(MaterialApp(
      title: "gogadoda",
      home: CoreWidget()
  ));
}

class CoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TextList();

}
