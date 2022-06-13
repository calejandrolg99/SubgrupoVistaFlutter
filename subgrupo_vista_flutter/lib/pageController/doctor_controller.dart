import 'package:subgrupo_vista_flutter/pageController/page_controller.dart';
import 'package:http/http.dart' as http;

class DoctorConsultController implements ConsultPageController<String>{

  @override
  Future get(String value) async{
    if(value != 'Todos'){
      final response =  await http.get(Uri.parse('http://10.0.2.2:3000/search/spe/$value'));
      return response.body;
    }else{
      final response =  await http.get(Uri.parse('http://10.0.2.2:3000/search/spe'));
      return response.body;
    }

  }

}