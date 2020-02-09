import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    getLocation();
  }

  // function to get the device's location
  void getLocation() async {
    Location location = Location();

    await location.getCurrentLocation();

    double lat = location.latitude;
    double long = location.longitude;

    print('Latitude: $lat , Longitude: $long');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
