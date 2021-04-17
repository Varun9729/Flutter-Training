import 'package:bloc_one/bloc/counter_bloc.dart';
import 'package:bloc_one/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: MyHomePage(),
      ),
    );
  }
}
