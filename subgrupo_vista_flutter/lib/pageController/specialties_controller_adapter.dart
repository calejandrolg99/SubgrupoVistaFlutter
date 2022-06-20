
import 'dart:convert';
import 'package:subgrupo_vista_flutter/pageController/page_controller_adapter.dart';
import 'package:subgrupo_vista_flutter/pageController/specialties_controller.dart';

class SpecialtiesControllerAdapter extends ConsultPageControllerAdapter<String>{

  @override
  Future<List<dynamic>> get(String value) async {
    controller = SpecialtiesConsultController();
    return List<dynamic>.from(json.decode(await controller.get(value)).map((x) => {"name": x["name"]}));
  }

}