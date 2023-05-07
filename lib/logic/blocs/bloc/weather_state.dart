// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  
}

class WeatherSuccessState extends WeatherState {
  final Weather weather;
  WeatherSuccessState(this.weather);
}

class WeatherErrorState extends WeatherState {
  final String messages;

  WeatherErrorState(this.messages);
}
