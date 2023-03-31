import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheryan/app/core/constants/data.dart';
import 'package:sheryan/app/core/models/hospital_mode.dart';
import 'package:sheryan/app/core/models/hospital_type_model.dart';
import 'package:sheryan/app/core/models/pathological_case_model.dart';
import 'package:sheryan/app/modules/main_home/main_home_controller.dart';

class MainHomeView extends GetView<MainHomeController> {
  const MainHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        title: const Text("الاسعاف "),
        centerTitle: true,
      ),
      body: GetBuilder<MainHomeController>(builder: (context) {
        return ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 10),
            Image.asset(
              "assets/images/ambulance.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            /////////////////////////////////
            Center(
              child: DropdownButton<PathologicalCase>(
                value: controller.selectedPathologicalCase,
                hint: const Text(
                  "إختر الحالة المرضية",
                  style: TextStyle(fontSize: 25),
                ),
                items: pathologicalCases
                    .map((pathologicalCase) =>
                        DropdownMenuItem<PathologicalCase>(
                          value: pathologicalCase,
                          child: Text(pathologicalCase.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  controller.changePathologicalCase(value);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            /////////////////////////////////////////////////////////////

            Center(
              child: DropdownButton<HospitalType>(
                value: controller.selectedHospitalType,
                hint: const Text(
                  "نوع المشفى",
                  style: TextStyle(fontSize: 25),
                ),
                items: hospitalTypes
                    .map((hospitalType) => DropdownMenuItem<HospitalType>(
                          value: hospitalType,
                          child: Text(hospitalType.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  controller.changeHospitalType(value);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ///////////////////////////////////////////////////////
            Center(
              child: DropdownButton<Hospital>(
                value: controller.selectedHospital,
                hint: const Text(
                  "المشفى",
                  style: TextStyle(fontSize: 25),
                ),
                items: controller.getHospitales
                    .map((hospital) => DropdownMenuItem<Hospital>(
                          value: hospital,
                          child: Text(hospital.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  controller.changeHospital(value);
                },
              ),
            ),
            /////////////////////////////////////////////////////////////
            const SizedBox(
              height: 150,
            ),
            Center(
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed("/mainHome");
                  },
                  child: const Text(
                    "Send Ambulance",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
