// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weatherapp/logic/services/http/wheatherApi.dart';

import '../../data/models/weather.dart';

class WeatherRepository {
  final WeatherApi weatherApi;
  WeatherRepository({
    required this.weatherApi,
  });

  Future<Weather> getWeather(String city) async {
    return await weatherApi.getWeather(city);
  }
}
