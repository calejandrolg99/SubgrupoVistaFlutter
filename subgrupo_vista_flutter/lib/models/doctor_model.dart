// To parse this JSON data, do
//
//     final doctorsResponse = doctorsResponseFromJson(jsonString);

import 'dart:convert';

import 'package:subgrupo_vista_flutter/models/model.dart';

List<DoctorsModel> doctorsModelFromJson(String str) => List<DoctorsModel>.from(json.decode(str).map((x) => DoctorsModel.fromJson(x)));

class DoctorsModel implements Model{
    DoctorsModel({
        required this.name,
        required this.gender,
        required this.photo,
        required this.specialty,
    });

    String name;
    String gender;
    String photo;
    dynamic specialty;

    factory DoctorsModel.fromJson(Map<String, dynamic> json) => DoctorsModel(
        name: json["name"],
        gender: json["gender"],
        photo: json["photo"],
        specialty: json["specialty"],
    );

}
