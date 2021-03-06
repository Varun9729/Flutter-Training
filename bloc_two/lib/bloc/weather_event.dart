import 'package:flutter/foundation.dart';

@immutable
abstract class WeatherEvent {}

class WeatherInitialEvent extends WeatherEvent {}

class WeatherGetEvent extends WeatherEvent {
  final String city;
  WeatherGetEvent({this.city});
}
