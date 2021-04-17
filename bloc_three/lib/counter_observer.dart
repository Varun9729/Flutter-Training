import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  //Overriding only one method in BlocObserver so it prints the changes to
  //console
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
