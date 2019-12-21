import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter666/utils/MyImage.dart';

class Page_LifeCycle extends StatelessWidget {
  //GlobalKey keyOne = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page_LifeCycle',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: SecondHomePage(GlobalKey()),
    );
  }
}

class SecondHomePage extends StatefulWidget {
  SecondHomePage(Key key) : super(key: key) {
    print('LifeCycle widget 构造方法：${this.hashCode}:key=${key}');
  }

  @override
  StatefulElement createElement() {
    print('LifeCycle createElement：${this.hashCode}');
    // TODO: implement createElement
    return super.createElement();
  }

  @override
  _MySecondPageState createState() {
    print('LifeCycle createState：${this.hashCode}');
    return _MySecondPageState();
  }
}

class _MySecondPageState extends State<SecondHomePage> {
  static var text = '测试state生命周期';

  _MySecondPageState() {
    print('LifeCycle state init：${this.hashCode}');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('LifeCycle state initState：${this.hashCode}');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('LifeCycle state didChangeDependencies：${this.hashCode}');
  }

  @override
  Widget build(BuildContext context) {
    print('LifeCycle state build：${this.hashCode}');
    GlobalKey key = new GlobalKey();
    return new MyMaterialButton(
      key: key /*Key('*****')*/,
      color: Color(Random().nextInt(0xffffff) + 0xff000000),
      textColor: Color(Random().nextInt(0xffffff) + 0xff000000),
      child: new Text('${text}${this.hashCode}${key}'),
      onPressed: () {
        print('onPress');
        setState(() {
          text = text + '${Random.secure().nextInt(100)}';
        });
      },
    );
  }

  @override
  void didUpdateWidget(SecondHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // TODO: implement didUpdateWidget
    print('LifeCycle state didUpdateWidget：${this.hashCode}');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('LifeCycle state deactivate：${this.hashCode}');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('LifeCycle state dispose：${this.hashCode}');
  }
}

class MyMaterialButton extends MaterialButton {
  final Color color;
  final Color textColor;
  final Widget child;
  final VoidCallback onPressed;

  MyMaterialButton(
      {Key key,
      @required this.onPressed,
      this.textColor,
      this.color,
      this.child})
      : super(
            key: key,
            onPressed: onPressed,
            textColor: textColor,
            color: color,
            child: child) {
    print('widget 构造方法：${this.hashCode}:key=${key}');
  }

  @override
  StatelessElement createElement() {
    print('widget createElement：${this.hashCode}:key=${key}');
    // TODO: implement createElement
    return super.createElement();
  }
}
