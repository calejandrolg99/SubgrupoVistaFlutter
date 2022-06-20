
import 'package:subgrupo_vista_flutter/pageController/page_controller.dart';
import 'package:http/http.dart' as http;

class SpecialtiesConsultController implements ConsultPageController<String>{

  @override
  Future<dynamic> get(String value) async {
    final response =
      await http.get(Uri.parse('http://10.0.1.12:3005/search/specialties'));
    return response.body;

  }

}