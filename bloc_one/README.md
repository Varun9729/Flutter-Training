# bloc_one

A default counter app  implementation using flutter_bloc

## Purpose
Just to understand what this package is and how to use it

## Notes

- Events are the basis of the bloc so any functionality like Incrementing/Decrementing the counter is 
considered to be an event
- Every stateful widget has a state. There is a state before an event and there is a state after an
event. State is the second element needed to be understood
- Three files are expected in case one decides to use BLOC architecture
-- A file for managing the business/logic -> bloc file
-- A file for all the events that can happen on the app -> events file
-- A file for all the states that the app can be in -> states file


## Steps 

- Import the flutter_bloc package
- Under lib create a folder called bloc. This folder has two files (1) bloc file called counter_bloc.dart
and (2) events file called counter_event.dart

- The first commit has an app that works. Bloc begins after this commit. This is so 
I can revert back in case I don't understand 

### Implementing the BLOC
- We have just one event/functionality i.e. incrementing
- We don't need to pass any information during this event as well
- Let's create an enum in the events file called CounterEvent
- Now we work on the counter_bloc.dart file which is the Business/Logic
- We need to extend the Bloc Class for us to gain access to the BLOC library
- We set the initial state which is the int value to 0
- There is an override method called mapEventToState which takes an event and yields a state 
in a stream. In this case this is a stream of int's

### Providing the BLOC to the widget tree
- In the main.dart file we need to provide the defined CounterBloc to the MyHomePage widget using
BlocProvider

### Using the BLOC in home.dart

- We create a state variable called _counterBloc which is an instance of the bloc we created
- We need to init the _counterBloc variable inside the build method using BlocProvider.of<CounterBloc>.context
- The text is rendered using BlocBuilder which always displays the current state
- We modify the onPressed method to add an event to the Bloc

As you can see there is no setstate being used anywhere and the UI and logic are handled separately

#### Thank you Abhishek Doshi for the [article](https://abhishekdoshi26.medium.com/bloc-pattern-in-flutter-part-1-5b72988048dd)
