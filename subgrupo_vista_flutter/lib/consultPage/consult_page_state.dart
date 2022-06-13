import 'package:flutter/cupertino.dart';
import '../pageController/page_controller.dart';
import 'consult_page.dart';

abstract class ConsultPageState extends State<ConsultPage> {
  late ConsultPageController controller;


  //Esto cambiara cuando haga la peticion a la Api
  dynamic contex = {
    "doctors": [
      {
        "name": "Carlos Landaeta",
        "gender": "m",
        "photo": "www.dsdsdsd.com/ds.jpg",
        "specialty": "Traumatologo",
      },
      {
        "name": "Sofia Ruiz",
        "gender": "f",
        "photo": "www.dsdsdsd.com/ds.jpg",
        "specialty": "Dermatologia",
      },
      {
        "name": "Alines Ortiz",
        "gender": "f",
        "photo": "www.dsdsdsd.com/ds.jpg",
        "specialty": "Urologia",
      },
      {
        "name": "Marta Goncalves",
        "gender": "f",
        "photo": "www.dsdsdsd.com/ds.jpg",
        "specialty": "Radiologia",
      },
      {
        "name": "Jose Flores",
        "gender": "m",
        "photo": "www.dsdsdsd.com/ds.jpg",
        "specialty": "Radiologia",
      },
      {
        "name": "Pancracia Rausseo",
        "gender": "f",
        "photo": "www.dsdsdsd.com/ds.jpg",
        "specialty": "Gastroenterologia",
      },
      {
        "name": "Rosmy Martinez",
        "gender": "f",
        "photo": "www.dsdsdsd.com/ds.jpg",
        "specialty": "Cirugia",
      }
    ]
  };

  void setContex(String value) {
    setState(() {
      //Aqui se le mandara el mensaje a PageController
      //Actualizar los ListView
      //controller.get(value); --->Aqui se le pasa el mensaje a page controller
    });
  }

  @override
  Widget build(BuildContext context);

  void assignController();
}
