import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  // constructor
  Location({this.latitude, this.longitude});

  // properties
  double latitude;
  double longitude;

  // method
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
