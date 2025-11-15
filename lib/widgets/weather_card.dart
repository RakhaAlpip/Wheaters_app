import 'package:flutter/material.dart';
import '../models/weather.dart'; // Tambahkan baris ini

class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/icons/${weather.icon}'),
          Text(weather.city),
          Text('${weather.temperature}°C'),
          Text(weather.condition),
        ],
      ),
    );
  }
}
