import 'package:flutter/material.dart';
import 'package:flutter666/redus/states/count_state.dart';
import 'package:flutter666/redus/top_screen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final store =
      Store<CountState>(reducer, initialState: CountState.initState());
  runApp(new MyReduxApp(store));
}

class MyReduxApp extends StatelessWidget {
  final Store<CountState> store;

  MyReduxApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TopScreen(),
      ),
    );
  }
}
