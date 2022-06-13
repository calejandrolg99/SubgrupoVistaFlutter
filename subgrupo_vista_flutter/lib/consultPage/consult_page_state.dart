import 'package:flutter/cupertino.dart';
import '../pageController/page_controller.dart';
import 'consult_page.dart';

abstract class ConsultPageState extends State<ConsultPage> {
  late ConsultPageController controller;

  dynamic contex;

  void setContex(value) {
    setState(() {
      //Aqui se le mandara el mensaje a PageController
      //Actualizar los ListView
      contex = controller.get(value);
      //controller.get(value); --->Aqui se le pasa el mensaje a page controller
    });
  }

  @override
  Widget build(BuildContext context);

  void assignController();
}
