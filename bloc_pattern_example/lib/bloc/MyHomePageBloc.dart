import 'dart:async';

class MyHomePageBloc {

  int counter = 0;

  final StreamController streamController = StreamController();
  Sink get input => streamController.sink;
  Stream get output => streamController.stream;

  void incrementCounter() {
      counter++;
      input.add(counter);
  }
}