import 'package:bloc/bloc.dart';
import 'package:bloc_three/app.dart';
import 'package:bloc_three/counter_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(MyApp());
}
