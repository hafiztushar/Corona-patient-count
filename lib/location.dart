import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Location {
  Position position;
  String latitude;
  String longitude;
  String address;
  String apiKey = 'ZJsBEGkpNpAvVh3vD0Atcf1SmFesRPFh';
  Future<void> getlocation() async {
    //gets lat long
    await requestPermission();
    position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    longitude = position.longitude.toString();
    latitude = position.latitude.toString();

    //get address
    Response response = await get(
        'http://open.mapquestapi.com/geocoding/v1/reverse?key=$apiKey&location=$latitude,$longitude&includeRoadMetadata=true&includeNearestIntersection=true');
    Map data = jsonDecode(response.body);
    address = data['results'][0]['locations'][0]['adminArea5'];
  }
}
