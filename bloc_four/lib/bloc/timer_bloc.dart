import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_four/bloc/timer_event.dart';
import 'package:bloc_four/bloc/timer_state.dart';
import 'package:bloc_four/ticker.dart';
import 'package:meta/meta.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final Ticker _ticker;
  static const int _duration = 60;
  StreamSubscription<int> _tickerSubscription;

  TimerBloc({@required Ticker ticker})
      : assert(ticker != null),
        _ticker = ticker,
        super(TimerInitial(_duration));

  @override
  Stream<TimerState> mapEventToState(TimerEvent event) async* {}
}
