import 'package:flutter/material.dart';

class Page_Dart_Study extends StatelessWidget {
  static const CONST_1 = '常量1';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page_Dart_Study',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: SecondHomePage(title: 'Page_Dart_Study'),
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
      child: new Text("dart1"),
      onTap: _clickFuncBase,
    );
  }

  _clickFuncBase() {
    //
    _clickFunc1();
  }

  _clickFunc1() {
    //动态类型
    var age;
    assert(age == null); //
    //age = 'aa';//dynamic

    var addr = "china";
    var array = [1, 5, 6];
    var map = {
      "key1": 11,
      "key2": 'hello world',
    };
    print(Page_Dart_Study.CONST_1);
    /// 文档注释（1
    /**
     *  文档注释（2
     * */
    /*
    多行注释
    多行注释
    */
    Runes input = new Runes(
        '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
    print(new String.fromCharCodes(input));
  }
}
