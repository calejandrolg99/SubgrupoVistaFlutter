import 'dart:io';

import 'package:flutter/material.dart';
import 'package:subgrupo_vista_flutter/consultPage/doctor_consult_page.dart';





void main() {
  /////////////////////////////////////////////////////////////////////////////////////////////////////////
  HttpOverrides.global=new MyHttpoverrides();
  /////////////////////////////////////////////////////////////////////////////////////////////////////////
  //WidgetsFlutterBinding.ensureInitialized(); //all widgets are rendered here
  //ConsultPageState.setContex('Todos');
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
      home: const DoctorConsultPage('Flutter Demo Home Page'),
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////
class MyHttpoverrides extends HttpOverrides{
  @override 
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
    ..badCertificateCallback = (X509Certificate cert, String host, int port)=>true;
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////