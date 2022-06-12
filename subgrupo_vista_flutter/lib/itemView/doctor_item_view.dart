
import 'package:flutter/material.dart';
import 'item_view.dart';

class DoctorItemView extends ItemView{

  final String name;
  final String gender;
  final String photoRoute;
  final String specialty;

  const DoctorItemView(this.name,this.gender,this.photoRoute, this.specialty,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Construir Doctor Item Widget a nivel grafico
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage('https://blog.aulaformativa.com/wp-content/uploads/2016/07/ventajas-elegir-fotografias-banco-de-imagenes-de-pago-evitar-uso-imagenes-tipicas.jpg'),
        radius: 30,
      ),
      title: Text( verifyGender(gender) + ' ' + name),
      subtitle: Text(specialty),

    );
  }

      
  String verifyGender(String gender){
    if (gender == 'f'){
      return "Dra.";
    }
    else{
      return "Dr.";
    }

  }
 
}