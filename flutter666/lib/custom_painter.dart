import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter666/six_star_paint.dart';

class Page_Custom_Painter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page_Custom_Painter',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: XXXHomePage(title: 'Page_Custom_Painter'),
    );
  }
}

class XXXHomePage extends StatefulWidget {
  XXXHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _XXXPageState createState() => _XXXPageState();
}

class _XXXPageState extends State<XXXHomePage> {
  Color _color1 = Colors.deepOrange;
  double _size1 = 0xbb;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: new SixStarPaint(_color1, _size1),
        onTapDown: (event) => {
              /*_color1 = Color(Random().nextInt(0xffffff) + 0xff000000);
                _size1 = Random().nextInt(0x88) + 0x88.toDouble();*/
            });
  }
}
