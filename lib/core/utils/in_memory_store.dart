import 'dart:async';

class InMemoryStore<T> {
  InMemoryStore(T initial) : _value = initial {
    _controller = StreamController<T>.broadcast();
  }

  late final StreamController<T> _controller;
  T _value;

  /// Stream for listening to changes
  Stream<T> get stream => _controller.stream;

  /// Current value (sync)
  T get value => _value;

  /// Update value and notify listeners
  set value(T newValue) {
    _value = newValue;
    _controller.add(newValue);
  }

  void close() {
    _controller.close();
  }
}
