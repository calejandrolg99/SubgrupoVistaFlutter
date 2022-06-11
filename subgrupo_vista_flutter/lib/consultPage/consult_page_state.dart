
import 'package:flutter/cupertino.dart';
import 'consult_page.dart';

abstract class ConsultPageState extends State<ConsultPage> {
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

  void setContex() {
    setState(() {
      // Esta llamada a setState le dice al framework Flutter que
      // algo ha cambiado en este State, lo que hace que se vuelva a ejecutar
      // el método build a continuación para que la pantalla pueda reflejar los
      // valores actualizados. Si cambias _counter sin llamar
      // setState(), entonces el método build no será llamado de nuevo,
      // así que aparentará no haber ocurrido nada.

      //Aqui se le mandara el mensaje a PageController
    });
  }

  @override
  Widget build(BuildContext context);


}