// To parse this JSON data, do
//
//     final doctorsResponse = doctorsResponseFromJson(jsonString);

import 'dart:convert';

DoctorsResponse doctorsResponseFromJson(String str) => DoctorsResponse.fromJson(json.decode(str));

//String doctorsResponseToJson(DoctorsResponse data) => json.encode(data.toJson());

class DoctorsResponse {
    DoctorsResponse({
        required this.doctors,
    });

    List<Doctor> doctors;

    factory DoctorsResponse.fromJson(Map<String, dynamic> json) => DoctorsResponse(
        doctors: List<Doctor>.from(json["doctors"].map((x) => Doctor.fromJson(x))),
    );

    //Map<String, dynamic> toJson() => {
       // "doctors": List<dynamic>.from(doctors.map((x) => x.toJson())),
    //};
}

class Doctor {
    Doctor({
        required this.name,
        required this.gender,
        required this.photo,
        required this.speciality,
    });

    String name;
    String gender;
    String photo;
    String speciality;

    factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        name: json["name"],
        gender: json["gender"],
        photo: json["photo"],
        speciality: json["speciality"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "gender": gender,
        "photo": photo,
        "speciality": speciality,
    };
}
