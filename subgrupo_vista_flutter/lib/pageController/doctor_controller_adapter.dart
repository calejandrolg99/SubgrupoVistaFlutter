
import 'dart:convert';
import 'package:subgrupo_vista_flutter/pageController/doctor_controller.dart';
import 'package:subgrupo_vista_flutter/pageController/page_controller_adapter.dart';

class DoctorControllerAdapter extends ConsultPageControllerAdapter<String>{

  @override
  Future<List<dynamic>> get(String value) async {
    controller = DoctorConsultController();
    return List<dynamic>.from(json.decode(await controller.get(value)).map((x) => {"name": x["name"], "gender": x["gender"], "photo": x["photo"], "specialty": x["specialty"]}));
  }

}