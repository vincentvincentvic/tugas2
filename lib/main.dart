import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WeatherHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Weather', style: TextStyle(color: Colors.white, fontSize: 22)),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0f2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            _buildCurrentWeatherSection(),
            SizedBox(height: 40),
            _buildForecastSection(),
            SizedBox(height: 20),
            _sevenDayForecast(),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentWeatherSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Jakarta',  // Display city as Jakarta, Indonesia
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Today',
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '30°C',  // Current temperature
              style: TextStyle(
                color: Colors.white,
                fontSize: 80,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Sunny',  // Current weather condition
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 24,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          '25°C / 30°C',  // Min/max temperature for today
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _buildForecastSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _weatherIconCard('Now', '30°C', Icons.wb_sunny, 10),
        _weatherIconCard('15:00', '29°C', Icons.cloud, 12),
        _weatherIconCard('16:00', '28°C', Icons.ac_unit, 15),
        _weatherIconCard('17:00', '26°C', Icons.snowing, 20),
      ],
    );
  }

  Widget _weatherIconCard(String time, String temp, IconData icon, int windSpeed) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white.withOpacity(0.2),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.8)),
            ),
            SizedBox(height: 8),
            Icon(icon, size: 36, color: Colors.white),  // White icons for elegant look
            SizedBox(height: 8),
            Text(
              temp,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 4),
            Text(
              '$windSpeed km/h',
              style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.7)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sevenDayForecast() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '7-day forecast',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        _buildForecastRow(),
      ],
    );
  }

  Widget _buildForecastRow() {
    return Column(
      children: [
        _forecastDayTile('Today', '25°C / 30°C'),
        _forecastDayTile('Tomorrow', '24°C / 31°C'),
        _forecastDayTile('Fri', '26°C / 32°C'),
        _forecastDayTile('Sat', '27°C / 33°C'),
      ],
    );
  }

  Widget _forecastDayTile(String day, String tempRange) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            tempRange,
            style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.7)),
          ),
        ],
      ),
    );
  }
}