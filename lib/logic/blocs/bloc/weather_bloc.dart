// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:weatherapp/logic/repositories/weather_reposiitory.dart';

import '../../../data/models/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({
    required this.weatherRepository,
  }) : super(WeatherInitial()) {
    on<WeatherInitialEvent>(
        weatherInitialEvent);
  }

  FutureOr<void> weatherInitialEvent(WeatherInitialEvent event,
      Emitter<WeatherState> emit) async {
    emit(WeatherLoadedState());
    // await Future.delayed(Duration(seconds: 1));
    try {
      final weather = await weatherRepository.getWeather(event.city);
      emit(WeatherSuccessState(weather));
      print(weather.city);
    } catch (e) {
      emit(WeatherErrorState(e.toString()));
    }
  }
}
