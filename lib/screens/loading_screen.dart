import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:learning_app/screens/screens.dart';
import '../services/location.dart';
import '../services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const appKey = '0930ce3cdef97ec851091466f5de982e';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      print('Location services are disabled');
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permission');
    }

    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    final url = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': latitude.toString(),
      'lon': longitude.toString(),
      'units': 'metric',
      'appid': appKey
    });

    NetworkHelper networkHelper = NetworkHelper(url);

    // double temperature = decodedData['main']['temp'];
    // int condition = decodedData['weather'][0]['id'];
    // String cityName = decodedData['name'];

    var weatherData = await networkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocator'),
        centerTitle: true,
      ),
      body: const Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
