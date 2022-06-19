import 'package:subgrupo_vista_flutter/models/model.dart';

//List<DoctorsModel> doctorsModelFromJson(String str) => List<DoctorsModel>.from(
//   json.decode(str).map((x) => DoctorsModel.fromJson(x)));

class DoctorsModel implements Model {
  DoctorsModel(Map<String, dynamic> json){ 
      this.name= json["name"];
       this.gender= json["gender"];
       this.photo= json["photo"];
       this.specialty= json["specialty"];
  }

  late String name;
  late String gender;
  late String photo;
  late dynamic specialty;

 //

  @override
  createModel() {
    return this;
  }
}
