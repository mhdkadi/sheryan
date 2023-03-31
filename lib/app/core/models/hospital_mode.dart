import 'package:sheryan/app/core/models/hospital_type_model.dart';
import 'package:sheryan/app/core/models/latlng_model.dart';

class Hospital {
  final int id;
  final String name;
  final String address;
  final HospitalType hospitalType;
  final int carCount;
  final Latlng location;

  Hospital({
    required this.id,
    required this.name,
    required this.address,
    required this.hospitalType,
    required this.carCount,
    required this.location,
  });
}
