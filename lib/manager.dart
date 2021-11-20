import 'dart:async';

class Manager {
  StreamController<int> _streamController = StreamController<int>();

  Sink<int> get inStreamController => _streamController.sink;
  Stream<int> get streamController$ => _streamController.stream;

  void dispose() {
    _streamController.close();
  }
}
