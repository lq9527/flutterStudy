import 'package:flutter/material.dart';

class Page_Gesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page_Gesture',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: SecondHomePage(title: 'Page_Gesture'),
    );
  }
}

class SecondHomePage extends StatefulWidget {
  SecondHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<SecondHomePage> {
  double _x = 0;
  double _y = 0;

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        GestureDetector(
            child: Container(
                width: 500,
                height: 1000,
                decoration: new BoxDecoration(
                  color: Colors.red,
                )),
            onVerticalDragUpdate: (event) => {
                  setState(() {
                    _x = event.globalPosition.dx;
                    _y = event.globalPosition.dy;
                  })
                }),
        Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.fromLTRB(_x, _y, 0, 0),
        decoration: new BoxDecoration(
          color: Colors.blue,
            )),
      ],
    );
  }
}

class MyGestureWidget extends StatelessWidget {
  const MyGestureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(0),
        child: GestureDetector(
            child: Container(
              width: 400.0,
              height: 1000.0,
              color: Color(0xffff0000),
            ),
            onTapDown: (x) => debugPrint(
                "onTapDown x:${x.globalPosition.dx}，y:${x.globalPosition.dy}"),
            onTapUp: (_) => debugPrint("onTapUp"),
            onTap: () => debugPrint("onTap"),
            onTapCancel: () => debugPrint("onTapCancel"),
            onDoubleTap: () => debugPrint("onDoubleTap"),
            onLongPress: () => debugPrint("onLongPress"),
            onLongPressUp: () => debugPrint("onLongPressUp"),
            onVerticalDragDown: (_) => debugPrint("onVerticalDragDown"),
            onVerticalDragStart: (_) => debugPrint("onVerticalDragStart"),
            onVerticalDragEnd: (_) => debugPrint("onVerticalDragEnd"),
            onVerticalDragCancel: () => debugPrint("onVerticalDragCancel"),
            onScaleStart: (_) => debugPrint("onScaleStart"),
            onScaleUpdate: (_) => debugPrint("onScaleUpdate"),
            onScaleEnd: (_) => debugPrint("onScaleEnd"),
            onVerticalDragUpdate: (x) => {
                  debugPrint(
                      "onVerticalDragUpdate x:${x.globalPosition.dx}，y:${x.globalPosition.dy}")
                }));
  }
}
