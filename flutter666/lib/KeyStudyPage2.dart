//import 'package:flutter/material.dart';
//import 'package:flutter666/utils/RandomColor.dart';
//
//class KeyStudyPage extends StatefulWidget {
//  @override
//  _ScreenState createState() => _ScreenState();
//}
//
//class _ScreenState extends State<KeyStudyPage> {
//  List<Widget> widgets = [
//    StatelessContainer(),
//    StatelessContainer(),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: widgets,
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: switchWidget,
//        child: Icon(Icons.undo),
//      ),
//    );
//  }
//
//  switchWidget() {
//    widgets.insert(0, widgets.removeAt(1));
//    setState(() {});
//  }
//}
//
//class StatelessContainer extends StatelessWidget {
//  final Color color = getRandomColor();
//
//  @override
//  Widget build(BuildContext context) {
//    Container container = Container(
//      width: 100,
//      height: 100,
//      color: color,
//    );
//    print('widget this:${container.hashCode}');
//    return container;
//  }
//}
//
////作者：Vadaski
////链接：https://juejin.im/post/5ca2152f6fb9a05e1a7a9a26
////来源：掘金
////著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
