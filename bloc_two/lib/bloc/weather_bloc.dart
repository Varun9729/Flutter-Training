import 'package:bloc_two/bloc/weather_event.dart';
import 'package:bloc_two/bloc/weather_state.dart';
import 'package:bloc_two/model/weather.dart';
import 'package:bloc_two/services/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is WeatherGetEvent) {
      yield WeatherLoadingState();
      Weather _weather = await ApiService.getWeather(event.city);
      yield WeatherLoadedState(weather: _weather);
    }
  }
}
