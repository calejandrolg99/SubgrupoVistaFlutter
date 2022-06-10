import 'package:flutter/cupertino.dart';
import 'item_view.dart';

class DoctorItemView extends ItemView{

  final String name;
  final String gender;
  final String photoRoute;

  const DoctorItemView(this.name,this.gender,this.photoRoute,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Construir Doctor Item Widget a nivel grafico
    return Text(name + ' ' + gender + ' ', textAlign:TextAlign.center);
  }
 
}