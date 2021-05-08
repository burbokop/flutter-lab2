
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_lab2/tile.dart';


class TextList extends StatefulWidget {
  @override
  State<TextList> createState() => _TextListState();

}

class _TextListState extends State<TextList> {

  var _data = <String>[];
  _append(String value) => this.setState(() => _data.add(value));
  @override
  Widget build(BuildContext context) => Container(
      margin: EdgeInsets.fromLTRB(4, 4, 4, 4),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tile("1", onPressed: _append),
              Tile("2", onPressed: _append),
              Tile("3", onPressed: _append),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tile("4", onPressed: _append),
              Tile("5", onPressed: _append),
              Tile("6", onPressed: _append),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(4),
            ),
            margin: EdgeInsets.fromLTRB(4, 4, 4, 4),
            alignment: Alignment.center,
            width: 316,
            height: 400,
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (_, index) => Text(
                '#$index: ${_data[index]}',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ),
        ],
      )
  );
}