import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hospital {
  final String id;
  final String name;
  final String address;
  final String type;
  final LatLng location;
  final double distance;

  Hospital({
    required this.id,
    required this.name,
    required this.address,
    required this.type,
    required this.location,
    required this.distance,
  });

  factory Hospital.fromMap(Map<String, dynamic> json, LatLng currentLocation) =>
      Hospital(
        id: json["_id"],
        name: json["name"],
        address: json["address"],
        type: json["type"],
        distance: distanceBetweenTwoPoints(
          LatLng(
            json["location"]["lat"]?.toDouble(),
            json["location"]["lng"]?.toDouble(),
          ),
          currentLocation,
        ),
        location: LatLng(
          json["location"]["lat"]?.toDouble(),
          json["location"]["lng"]?.toDouble(),
        ),
      );
  static List<Hospital> hospitals(List data, LatLng currentLocation) =>
      data.map((e) => Hospital.fromMap(e, currentLocation)).toList();
}

double distanceBetweenTwoPoints(
  LatLng startPoint,
  LatLng endPoint,
) {
  double toRadians(double degree) => degree * pi / 180;
  double earthRadius = 6378137.0;
  double dLat = toRadians(endPoint.latitude - startPoint.latitude);
  double dLon = toRadians(endPoint.longitude - startPoint.longitude);

  double a = pow(sin(dLat / 2), 2) +
      pow(sin(dLon / 2), 2) *
          cos(toRadians(startPoint.latitude)) *
          cos(toRadians(endPoint.latitude));
  double c = 2 * asin(sqrt(a));

  return earthRadius * c;
}
