import 'dart:io';

import 'package:flutter/material.dart';
import 'item_view.dart';

class DoctorItemView extends ItemView {

  final String name;
  final String gender;
  final String photoRoute;
  final dynamic specialty;

  const DoctorItemView(this.name, this.gender, this.photoRoute, this.specialty,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Construir Doctor Item Widget a nivel grafico
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: 
        verifyPhoto(photoRoute),
        radius: 30,
      ),
      title: Text(verifyGender(gender) + ' ' + name),
      subtitle: Text(verifySpecialty(specialty)),
    );
  }

  ImageProvider verifyPhoto(String photoRoute) {
    if (photoRoute == null) {
      return NetworkImage(
          'https://globalmetropolitano.com/cms/wp-content/uploads/2017/03/user-icon.png');
    } else {
      return AssetImage(photoRoute);
    }
  }

  String verifyGender(String gender) {
    if (gender == 'f') {
      return "Dra.";
    } else {
      return "Dr.";
    }
  }
}

String verifySpecialty(List specialty) {
  String specialities = '';

  if (specialty.length > 0) {
    if (specialty.length > 1) {
      for (var item in specialty) {
        if (item == specialty[0]) {
          specialities = specialty[0];
        } else {
          specialities = specialities + ', ' + item;
        }
      }
      return specialities;
    }
    return specialty[0];
  } else {
    return 'Medico Cirujano';
  }
}
