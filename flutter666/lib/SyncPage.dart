import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter666/redus/states/count_state.dart';
import 'package:flutter666/redus/top_screen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class SyncPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xxx',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: GestureDetector(
        child: Text('测试aSync'),
        onTap: _testSync,
      ),
    );
  }

  Future<void> _testSync() async {
    Thread
    try {
      var count = await _costTime();
      print('count await = ${count}');
    } catch (e) {
      print('count ex = ${e}');
    }
  }

  int _costTime() {
    sleep(Duration(seconds: 3));
    return 99;
  }
}
