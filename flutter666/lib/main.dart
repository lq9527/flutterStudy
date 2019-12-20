import 'dart:ffi';

import 'package:battery/battery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter666/page/RenderObjectPage.dart';
import 'package:flutter666/page_async.dart';
import 'package:flutter666/page_dart_study.dart';
import 'package:flutter666/page_ui.dart';
import 'package:flutter666/redus/main_redux.dart';
import 'package:flutter666/redus/states/count_state.dart';
import 'package:flutter666/second_page.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'animation.dart';
import 'custom_painter.dart';
import 'gesture_ui.dart';
import 'layout_ui.dart';
import 'net.dart';

void main() => runApp(MyApp());
var funcList = [
  'Redux',
  'RenderObjectPage',
  '自定义View',
  '页面跳转',
  'UI',
  'Dart语言学习',
  '异步',
  'Dart-Native',
  'SharedPreferenceUtil',
  'batteryPlugin',
  '动画',
  '盒约束',
  '手势',
  '网络',
  'xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx',
  'xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx',
  'xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx',
  'xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx',
  'xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx','xxx'
];
var funcListSize = funcList.length;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new ListView.builder(
        padding: new EdgeInsets.all(5.0),
        itemExtent: 75,//TODO 75 ?
        itemBuilder: (BuildContext context, int index) {
          return (new FlatButton(
              onPressed: () => _itemClick(index),
              child: new Text(
                "Item:" + '$index:' + funcList[index],
                style: new TextStyle(color: Colors.blue),
              )));
        },
      ),
    );
  }

  _itemClick(index) {
    print('item click:' + '$index:' + funcList[index]);
    switch (funcList[index]) {
      case '页面跳转':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new SecondPage(),
            ),
          );
          break;
        }
      case 'UI':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new Page_UI(),
            ),
          );
          break;
        }
      case 'Dart语言学习':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new Page_Dart_Study(),
            ),
          );
          break;
        }
      case '异步':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new Page_Async(),
            ),
          );
          break;
        }
      case 'Dart-Native':
        {
          _incrementCount();
          break;
        }
      case 'SharedPreferenceUtil':
        {
          _incrementCounter();
          break;
        }
      case 'batteryPlugin':
        {
          _batteryPlugin();
          break;
        }
      case '动画':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new LogoApp(),
            ),
          );
          break;
        }
      case '盒约束':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new Page_UI_Layout(),
            ),
          );
          break;
        }
      case '手势':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new Page_Gesture(),
            ),
          );
          break;
        }
      case '网络':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new Net_Page(),
            ),
          );
          break;
        }
      case '自定义View':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new Page_Custom_Painter(),
            ),
          );
          break;
        }
      case 'RenderObjectPage':
        {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new RenderObjectPage(),
            ),
          );
          break;
        }
      case 'Redux':
        {
          final store = Store<CountState>(
              reducer, initialState: CountState.initState());
          runApp(new MyReduxApp(store));
          break;
        }
    }
  }

  //计数器
  int _counter = 0;

  //定义通道，作为通信标识符
  final platform = const MethodChannel("add");

  Future<Null> _incrementCount() async {
    //调用原生方法实现计数器自增
    int result = 0;
    try {
      //参数为方法名称
      result = await platform.invokeMethod("getNumber");
    } on PlatformException catch (e) {
      print(e.message);
    }
    print('dart2java:$result');
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }

  Future<void> _batteryPlugin() async {
    // Instantiate it
    var battery = Battery();
    // Access current battery level
    print(await battery.batteryLevel);
    print('_plugin of battery');
  }

}
