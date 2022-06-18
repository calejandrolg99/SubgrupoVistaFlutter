import 'package:subgrupo_vista_flutter/listModel/doctor_list_model.dart';
import 'package:subgrupo_vista_flutter/pageController/page_controller.dart';
import 'package:http/http.dart' as http;

class DoctorConsultController implements ConsultPageController<String>{

  @override
  Future<List<dynamic>> get(String value) async {
    if (value != 'Todos' && value != ' ') {
      final response =
          await http.get(Uri.parse('http://10.0.1.12:3005/search/spe/$value'));
      return DoctorListModel().createModels(response.body);
    } else {
      final response =
          await http.get(Uri.parse('http://10.0.1.12:3005/search/spe'));
      return DoctorListModel().createModels(response.body);

    }

  }

}