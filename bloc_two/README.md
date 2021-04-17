# bloc_two

A weather app using BLOC state management. This is the second post in this series of BLOC practice sessions.

## Notes


## Steps
- The folder structure is important. Under lib created these folders
    - bloc
    - models
    - screens
    - services
- Three packages are required 
    - flutter_bloc
    - equatable
    - http

- As done in the first tutorials we need to have three kinds of files
    - bloc file for the Business Logic stuff
    - event file for all the events
    - state file for all the states
- This tutorial uses a fake weather API so no finding API keys. It's a really simple JSON though
<br>
```json
{
    "temperature": 42,
    "yesterdayMax": 44,
    "yesterdayMin": 36,
    "todayMax": 43,
    "todayMin": 34
}
```
[api link](https://01b0f7a1-9563-47f5-b628-f14c51464ec5.mock.pstmn.io/api/get-weather-success?city=)
<br>
- We need to create a model for this JSON data
- This is a fake api so we will always get the same response. Let's just focus on the BLOC learning 
- This model will be defined in weather.dart under models
- The next part is the API service which will be under the services folder named api_service.dart
- The API service does the request and returns the data 

### Implementing BLOC

- Defining the events in the events file. Two events 
    - Initial Event 
    - Get weather Event once a city name is provided
- Defining the states in the state file. Four(4) States 
    - Weather initial state
    - Weather loading state
    - Weather get state
    - Weather loaded state
- The classes are written the same way for states as well
-- That's all for the bloc bit

### UI 

- Update main.dart giving the Bloc Provider to home

This is a really good example and taught me a ton. Thanks Abhishek Doshi for this [article](https://abhishekdoshi26.medium.com/bloc-pattern-in-flutter-part-2-b1c97be8cff3)

