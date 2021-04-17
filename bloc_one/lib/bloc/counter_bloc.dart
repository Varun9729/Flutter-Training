import 'package:bloc_one/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc():super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch(event){
      case CounterEvent.increment:
        yield state+1;
        break;
      default:
        break;
    }
  }

}