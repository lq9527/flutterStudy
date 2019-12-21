import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter666/utils/MyImage.dart';
///didUpdateWidget 组件状态改变时候调用，可能会调用多次

class Page_LifeCycle2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyLifeState();
  }
}

class _MyLifeState extends State<Page_LifeCycle2> {
  double _margin = 10;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.all(_margin),
          decoration: new BoxDecoration(
            color: Colors.red,
          ),
          child: TestWidget(),
        ),
        onTap: () {
          setState(() {
            _margin += 10;
          });
        });
  }

  @override
  void didUpdateWidget(Page_LifeCycle2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('test didUpdateWidget');
  }
}

class TestWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyLifeState2();
  }
}

class _MyLifeState2 extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('Hello');
  }

  @override
  void didUpdateWidget(StatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('test didUpdateWidget 222 hashCode:${oldWidget.hashCode}');
  }
}
