import 'package:flutter/material.dart';

//模型数据
class InheritedTestModel {
  final int count;

  const InheritedTestModel(this.count);
}

//自定义MyInheritedWidget(可以把它看成古代边城的哨所)
class MyInheritedWidget extends InheritedWidget {
  //构造方法
  MyInheritedWidget(
      {Key key, @required this.data, @required Widget child}) //子组件
      : super(key: key, child: child);

  //属性
  final InheritedTestModel data; //共享的数据model

  //类方法
  static MyInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyInheritedWidget);
  }

  //示例方法
  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return data != oldWidget.data;
  }
}

class MyParentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MyInheritedWidget(
      data: InheritedTestModel(100),
      child: MyChildWidget()
    );
  }
}

class MyChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidget inheritedWidget = MyInheritedWidget.of(context);

    /// 从此刻开始，窗口小部件可以使用MyInheritedWidget公开的数据
    /// 通过调用：inheritedWidget.data
    return new Text('${inheritedWidget.data.count}');
  }
}
