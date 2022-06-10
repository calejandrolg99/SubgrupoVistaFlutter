import 'package:flutter/material.dart';
import 'listView/doctor_list_view.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  //Esto es un ejemplo del JSON que sera recibido de la Api
  final dynamic context = {
  "specialty": "Traumatologo",
  "doctors": [
    {
      "name": "carlos",
      "gender": "masculino",
      "photo": "www.dsdsdsd.com/ds.jpg"
    },
    {
      "name": "sofia",
      "gender": "femenino",
      "photo": "www.dsdsdsd.com/ds.jpg"
    }
  ]
  };


  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          heightFactor: 10,
          child: DoctorListView(this.context)
              ),
    );
  }
}
