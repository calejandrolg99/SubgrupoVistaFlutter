import 'dart:convert';

import 'package:subgrupo_vista_flutter/listModel/list_model.dart';
import 'package:subgrupo_vista_flutter/models/doctor_model.dart';

class DoctorListModel implements ListModel {

  @override
  List<dynamic> createModels(String str) {

    return List<DoctorsModel>.from(json.decode(str).map((x) => DoctorsModel.fromJson(x)));

  }

}
