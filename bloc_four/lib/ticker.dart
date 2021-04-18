class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(
        Duration(seconds: 1), //Length of tick
        (x) => ticks - x - 1 // A computation
        ).take(ticks);
  }
}
