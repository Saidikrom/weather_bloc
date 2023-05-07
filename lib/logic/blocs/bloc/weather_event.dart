part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {
  const WeatherEvent(String city);
}

class WeatherInitialEvent extends WeatherEvent {
   final String city;

  WeatherInitialEvent({required this.city})
      : assert(city != null),
        super(city);
}

