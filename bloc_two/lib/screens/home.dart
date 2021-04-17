import 'package:bloc_two/bloc/weather_bloc.dart';
import 'package:bloc_two/bloc/weather_event.dart';
import 'package:bloc_two/bloc/weather_state.dart';
import 'package:bloc_two/screens/weather_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _city = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/bg.jpeg',
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body:
              BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
            if (state is WeatherLoadingState) {
              print('Weather Loading State');
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    state is WeatherLoadedState
                        ? WeatherCard(
                            state: state,
                          )
                        : Container(),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _city,
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          hintText: 'Enter City Name',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                          ),
                          prefixIcon: Icon(Icons.home),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () async {
                          context.read<WeatherBloc>().add(
                                WeatherGetEvent(city: _city.text),
                              );
                        },
                        child: Text(
                          'Check Weather!',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue.shade400,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
          }),
        )
      ],
    );
  }
}
