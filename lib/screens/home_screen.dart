import 'package:flutter/material.dart';
import '../models/weather.dart';
import '../widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Weather> weatherData = [
    Weather('Jakarta', 32.0, 'Cerah', 'sun.png'),
    Weather('Bandung', 25.0, 'Berawan', 'cloud.png'),
    Weather('Surabaya', 30.0, 'Hujan', 'rain.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather App')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return ListView.builder(
              itemCount: weatherData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset('assets/icons/${weatherData[index].icon}'),
                  title: Text(weatherData[index].city),
                  subtitle: Text('${weatherData[index].temperature}°C, ${weatherData[index].condition}'),
                );
              },
            );
          } else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: weatherData.length,
              itemBuilder: (context, index) {
                return WeatherCard(weather: weatherData[index]);
              },
            );
          }
        },
      ),
    );
  }
}
