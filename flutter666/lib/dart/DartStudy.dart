import 'dart:async';
import 'dart:io';
import 'dart:isolate';

void main() async {
  Home home = new Home();
  home.momIsCooking();
  home.iPlayGame();
  home.momLetMeBuySoySauce();
  home.iAgreeToBuy();

  ReceivePort receivePort = ReceivePort();
  Isolate.spawn(Home.buySoySauce, receivePort.sendPort);

  var saySauce = await receivePort.first;
  print(saySauce);
}

class Home {
  void momIsCooking() {
    print("mom is cooking");
  }

  void iPlayGame() {
    Timer.periodic(Duration(seconds: 1), (_) {
      print("game is funning：${Isolate.current.debugName}");
    });
  }

  void momLetMeBuySoySauce() {
    print("sweet, can you help to buy a bottle of soy sause, please?");
  }

  void iAgreeToBuy() {
    print("ok,mom. I will buy it");
  }

  static buySoySauce(SendPort sendPort) {
    Timer(Duration(seconds: 2), () {
      print('buySoySauce<<<<');
      sleep(Duration(seconds: 4));
      sendPort.send("I have bought it:${Isolate.current.debugName}");
    });
  }
}