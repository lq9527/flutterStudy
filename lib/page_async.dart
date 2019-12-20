import 'dart:io';

import 'package:flutter/material.dart';

class Page_Async extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page_Async',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: SecondHomePage(title: 'Page_Async'),
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
    return new GestureDetector(
      child: new Text("异步"),
      onTap: _clickFuncBase,
    );
  }

  _clickFuncBase() async {
    var result = await _syncCostLongMethod();
    print(result);
  }

  Future<String> _syncCostLongMethod() async {
    sleep(Duration(seconds: 2));
    return 'long long time';
  }
}
