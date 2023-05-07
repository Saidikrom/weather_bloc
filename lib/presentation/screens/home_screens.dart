import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/logic/blocs/bloc/weather_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final WeatherBloc weatherBloc = WeatherBloc(weatherRepository: );
  @override
  void initState() {
    super.initState();
    // context.read<WeatherBloc>().weatherRepository.getWeather("london");
    // context.read<WeatherInitialEvent>();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: w,
              height: h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xff08244F),
                    Color(0xff134CB5),
                    Color(0xff0B42AB),
                  ],
                ),
              ),
            ),
            Container(
                width: w,
                height: h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children:const  [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 24,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
