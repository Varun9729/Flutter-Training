# bloc_four

Implementing the Timer example from the [BLOC documentation](https://bloclibrary.dev/#/fluttertimertutorial)

## Things to work on
- Creating streams wasn't very clear. Especially the computation function
passed to the tick function defined in the Ticker Class (ticker.dart)

## Steps

- A data source for time needs to be created 
- This is a Stream of ticks (seconds)
- We expose a method that creates ticks in the Ticks class

### Implementing the Timer BLOC

- As in the previous tutorials we know that three things are needed
    - File for states which the bloc can be in
        - Timer has an initial state TimerInitial
            - In this state the user can start the timer
        - Timer is in progress i.e. counting down TimerRunInProgress
            - In this state the user can pause , reset and see the remaining duration
        - Timer is pause TimerRunPause
            - The user can resume and reset the timer
        - Timer is complete i.e. remaining time is 0 TimerRunComplete
            - The user can reset the timer
    - File for events
    - File for the bloc
- 
