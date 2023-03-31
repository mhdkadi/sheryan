import 'package:get/get.dart';
import 'package:sheryan/app/core/constants/data.dart';
import 'package:sheryan/app/core/models/hospital_mode.dart';
import 'package:sheryan/app/core/models/hospital_type_model.dart';
import 'package:sheryan/app/core/models/pathological_case_model.dart';

class MainHomeController extends GetxController {
  PathologicalCase? selectedPathologicalCase;
  HospitalType? selectedHospitalType;
  Hospital? selectedHospital;

  void changePathologicalCase(PathologicalCase? pathologicalCase) {
    selectedPathologicalCase = pathologicalCase;
    update();
  }

  void changeHospitalType(HospitalType? hospitalType) {
    selectedHospitalType = hospitalType;
    selectedHospital = null;
    update();
  }

  void changeHospital(Hospital? hospital) {
    selectedHospital = hospital;
    update();
  }

  List<Hospital> get getHospitales {
    if (selectedHospitalType == null) {
      return hospitales;
    } else {
      if (selectedHospitalType!.id == 1) {
        return hospitales
            .where((element) => element.hospitalType.id == 1)
            .toList();
      } else {
        return hospitales
            .where((element) => element.hospitalType.id == 2)
            .toList();
      }
    }
  }
}
