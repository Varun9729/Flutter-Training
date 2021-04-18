void main() async {
  Duration interval = Duration(seconds: 2);
  //Stream periodic create a stream that repeatedly emits events at period intervals
  Stream<int> stream = Stream<int>.periodic(interval, callback);

  await for (int i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
