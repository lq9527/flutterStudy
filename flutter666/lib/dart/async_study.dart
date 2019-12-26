import 'dart:async';

import 'dart:isolate';

void main() {

  print('main Start>>${Isolate.current.debugName}');

  new Future((){
    print('this is my task>>${Isolate.current.debugName}');
  });

  new Future.microtask((){
    print('this is microtask>>${Isolate.current.debugName}');
  });

  print('main Stop>>${Isolate.current.debugName}');

}