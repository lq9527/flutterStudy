import 'package:flutter/material.dart';
import 'package:flutter666/utils/RandomColor.dart';


///Flutter之在Flutter布局中嵌入原生组件Android篇
///https://www.jianshu.com/p/bba0f615d59c
///
class PlatformViewPage extends StatefulWidget {
  @override
  _XXtate createState() => _XXtate();
}

class _XXtate extends State<PlatformViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello platformView'),
      ),
      body: Center(
        child: AndroidView(viewType: 'plugins.nightfarmer.top/myview'),
      ),
    );
  }
}
