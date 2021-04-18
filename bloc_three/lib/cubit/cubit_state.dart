import 'package:meta/meta.dart';

class CounterState {
  int counterValue;
  bool wasIncremented;

  CounterState({
    @required this.counterValue,
    @required this.wasIncremented,
  });
}
