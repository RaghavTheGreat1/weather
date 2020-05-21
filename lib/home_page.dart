
import 'package:flutter/material.dart';
import 'future_forecast_card.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Weather Forecast',
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Icon(Icons.wb_sunny),
          Text('31.9 C'),
          Text('LakeTown'),
          Row(
            children: <Widget>[
              Text(
                'Today',
              ),
              Text(
                'Tomorrow',
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              FutureForecastCard(),
            ],
          ),
          Text(
            'Additional Info',
          ),
          Row(
            children: <Widget>[
              Text('Wind'),
              Text('Humidity'),
            ],
          ),
          Row(
            children: <Widget>[
              Text('Visibilty'),
              Text('UV'),
            ],
          ),
        ],
      ),
    );
  }
}