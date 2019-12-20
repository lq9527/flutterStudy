import 'package:flutter/material.dart';
import 'package:flutter666/render/SixStarWidget.dart';
import 'dart:math';

import '../six_star_paint.dart';

class RenderObjectPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RenderObjectState();
  }
}

class RenderObjectState extends State<RenderObjectPage> {
  Color _color1 = Colors.deepOrange;
  Color _color2 = Colors.greenAccent;
  double _size1 = 0xbb;
  double _size2 = 0xbb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义RenderObject"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _decorate(SixStarWidget(_color1, _size1), () {
            _color1 = Color(Random().nextInt(0xffffff) + 0xff000000);
            _size1 = Random().nextInt(0x88) + 0x88.toDouble();
          }),
          _decorate(SixStarPaint(_color2, _size2), () {
            _color2 = Color(Random().nextInt(0xffffff) + 0xff000000);
            _size2 = Random().nextInt(0x88) + 0x88.toDouble();
          }),
        ],
      ),
    );
  }

  /// 抽出重复代码
  Widget _decorate(Widget toShow, Function onTap) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.deferToChild,
        onTap: () {
          setState(() {
            print("debug 1>");
            onTap();
          });
        },
        child: Align(
          alignment: Alignment.center,
          child: toShow,
        ),
      ),
    );
  }
}
