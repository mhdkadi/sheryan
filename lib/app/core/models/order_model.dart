import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sheryan/app/core/models/pathological_case_model.dart';

class Order {
  final String id;
  final String level;
  final String status;
  final LatLng location;
  final PathologicalCase pathologicalCase;
  final DateTime createdAt;

  Order({
    required this.id,
    required this.level,
    required this.status,
    required this.location,
    required this.pathologicalCase,
    required this.createdAt,
  });

  factory Order.fromMap(Map<String, dynamic> json) => Order(
        id: json["_id"],
        level: json["level"],
        status: json["status"],
        location: LatLng(json["location"]["lat"], json["location"]["lng"]),
        pathologicalCase: PathologicalCase.fromMap(json["pathologicalCase"]),
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "level": level,
        "status": status,
        "location": {
          "lat": location.latitude,
          "lng": location.longitude,
        },
        "pathologicalCase": pathologicalCase.toMap(),
        "createdAt": createdAt.toIso8601String(),
      };
  static List<Order> orders(List data) =>
      data.map((e) => Order.fromMap(e)).toList();
}
