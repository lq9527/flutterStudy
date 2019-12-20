import 'package:flutter/material.dart';

class Page_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page_UI',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: SecondHomePage(title: 'Page_UI'),
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
        child: new CustomScrollView(shrinkWrap: true, slivers: <Widget>[
          // 内容
          new SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: new SliverList(
                  delegate: new SliverChildListDelegate(<Widget>[
                new FlatButton(
                  onPressed: () {
                    debugDumpApp();
                  },
                  child: new Text('Dump App(渲染树'),
                ),
                const Text('A', textDirection: TextDirection.rtl),
                const Text('C'),
              ])))
        ]));
  }
}
