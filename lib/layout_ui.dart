import 'package:flutter/material.dart';

class Page_UI_Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page_UI_Layout',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: SecondHomePage(title: 'Page_UI_Layout'),
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
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                    width: 500,
                    height: 100,
                    decoration: new BoxDecoration(
                      color: Colors.red,
                    )),
                Container(
                    width: 20,
                    height: 20,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                    )),
                Container(
                    width: 10,
                    height: 10,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                    )),
              ],
            ),
            Text('hello'),
            Text('hello'),
            new Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Text('测试Stack重叠',
                    style: TextStyle(fontSize: 40, color: Colors.blue)),
                Text('*', style: TextStyle(fontSize: 40, color: Colors.red)),
              ],
            )
          ],
        ));
  }
}
