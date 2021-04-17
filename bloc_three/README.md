# bloc_three

This implements the counter example from the [documentation](https://bloclibrary.dev/#/fluttercountertutorial). The aim is to have a completely documented application.

<hr>

## Steps
- There is something called a BlocObserver which let's use keep a track of all the state changes in the application. That is the first file being created under lib -> counter_observer.dart
- The BlocObserver is used in main.dart before runApp this will let us observe state changes in MyApp
- The next file we create is app.dart which defines the Stateless Widget MyApp
- MyApp is a MaterialApp with home set to CounterPage -> counter_page.dart
- We use BlocProvider to provide CounterCubit(still not written)  to the CounterView -> counter_view.dart. CounterView is where we will write the UI
- Let's write CounterCubit first which extends the Base Cubit class -> counter_cubit.dart
- The CounterCubit has two void methods defined . The just update the state ++/--
- This Cubit is provided to the Text Widget in counter_view.dart by wrapping the Text Widget in a BlocBuilder
- The Floating action buttons have onPressed methods which now can update the state thanks to the methods defined in CounterCubit -> counter_cubit.dart