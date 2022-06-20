import 'package:flutter/cupertino.dart';
import '../pageController/page_controller.dart';
import 'consult_page.dart';

abstract class ConsultPageState extends State<ConsultPage> {
  late ConsultPageController controller;

  dynamic contex;

   setContex(value) {
    //contex = controller.get(value);
    return controller.get(value);
  }

  @override
  Widget build(BuildContext context);
}